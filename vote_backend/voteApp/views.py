from django.shortcuts import render
from django.core.exceptions import ObjectDoesNotExist
from .models import Organizations, Voters, Contestant
from rest_framework import viewsets, permissions
from rest_framework.decorators import api_view
from rest_framework.response import Response
from .serializers import OrganizationsSerializer, VotersSerializer, ContestantSerializer
# Create your views here.

#SOME IMPORTANT VARIABLES

class votersViewSet(viewsets.ModelViewSet):
    """
    Api endpoint that allow Voters to be viewed or edited.
    """
    queryset = Voters.objects.all()
    serializer_class = VotersSerializer
    permission_classes = [permissions.IsAuthenticated]


class ContestantViewSet(viewsets.ModelViewSet):
    """
    Api endpoint that allow Voters to be viewed or edited.
    """
    queryset = Contestant.objects.all()
    serializer_class = ContestantSerializer
    permission_classes = [permissions.IsAuthenticated]

class OrganizationsViewSet(viewsets.ModelViewSet):
    """
    Api endpoint that allow Voters to be viewed or edited.
    """
    queryset = Organizations.objects.all()
    serializer_class = OrganizationsSerializer
    permission_classes = [permissions.IsAuthenticated]


@api_view(['POST'])
def VotersRegistration(request):
    """"
    A function for voters registration
    """

    data = request.data
    Name = data['organization']
    contestantName = data['FullName']
    id = data['identity']
    try:
        organizationName = Organizations.objects.get(name=Name)
    except Organizations.DoesNotExist:
        return Response({'response': 'Create organization'})
    try:
        check = Voters.objects.get(FullName=contestantName, identity=id, Validate_organization=Name)
    except Voters.DoesNotExist:
        organizationName = Organizations.objects.get(name=Name)
        VotersData = Voters.objects.create(
            FullName=data['FullName'],
            email=data['email'],
            organization=organizationName,
            identity=data['identity'],
            password=data['password'],
            Validate_organization=data['Validate_organization']
        )
        VotersData.save()
        serializer = VotersSerializer(VotersData, many=False, context={'request': request})
        return Response(serializer.data)
    else:
        return Response({})

@api_view(['POST'])
def ContestantRegistration(request):
    """
    A function for contestant registration
    """
    data = request.data
    Name = data['organization']
    contestantName = data['FullName']
    try:
        check = Contestant.objects.get(FullName=contestantName, Validate_organization=Name)
    except Contestant.DoesNotExist:
        try:
            organizationName = Organizations.objects.get(name=Name)
        except Organizations.DoesNotExist:
            return Response({'response': 'Create organization'})
        ContestantData = Contestant.objects.create(
            FullName=data['FullName'],
            position=data['position'],
            organization=organizationName,
            Validate_organization=data['Validate_organization']
        )
        ContestantData.save()
        serializer = ContestantSerializer(ContestantData, many=False, context={'request': request})
        return Response(serializer.data)
    else:
        return Response({})

@api_view(['POST'])
def OrganizationRegistration(request):
    """
    A function for organization registration
    """
    try:
        data = request.data
        Name = data['name']
        check = Organizations.objects.get(name=Name)
    except Organizations.DoesNotExist:
        ContestantData = Organizations.objects.create(
            name=data['name'],
            password=data['password'],
            identity=data['identity']
        )
        ContestantData.save()
        serializer = OrganizationsSerializer(ContestantData, many=False, context={'request': request})
        return Response(serializer.data)
    else:
        return Response({})

@api_view(['GET'])
def VotersLogin(request, name, id, key, VotersOrganization, AspiringPosition):
    """
    A function for logging voters into the iVote app
    """

    try:
        VotersData = Voters.objects.get(FullName=name, identity=id, password=key)
    except Voters.DoesNotExist:
        return Response({"password": "incorrect"})
    try:
        candidates = Contestant.objects.filter(Validate_organization=VotersOrganization, position=AspiringPosition)
    except Contestant.DoesNotExist:
        return Response({"organization": "incorrect"})
    print(candidates)
    serializer = ContestantSerializer(candidates, context={'request': request}, many=True)
    return Response(serializer.data)


@api_view(['GET'])
def VOTE(request, name, id, contestant, VotersOrganization, AspiringPosition):
    """
    A function that enables iVote users to cast their vote once for a position
    in an organization
    TERMS FOR RECORDING CASTED VOTES
    | - a voter is granted the privilege to vote once for a particular
    | position in an organization
    |
    | - voters must vote with their identities, else the vote is considered invalid 
    """

    try:
        
        check = Contestant.objects.filter(Validate_organization=VotersOrganization , position=AspiringPosition )
        for names in check:
            try:
                supports = names.supporters.get(FullName=name)
            except (Voters.DoesNotExist, Contestant.DoesNotExist):
                continue
            else:
                 return Response({"Supporter": "Voted"})
    except Contestant.DoesNotExist:
         return Response({"Supporter": "invalid"})
    try:
        VotersData = Voters.objects.get(FullName=name, identity=id)
    except Voters.DoesNotExist:
        return Response({})
    try:
        candidates = Contestant.objects.get(FullName=contestant)
        candidates.supporters.get(FullName=VotersData.FullName)
    except (Contestant.DoesNotExist, Voters.DoesNotExist):
        candidates.vote_count += 1
        candidates.supporters.add(VotersData)
        candidates.save()
        serializer = ContestantSerializer(candidates, context={'request': request})
        return Response(serializer.data)
    else:
        return Response({})


@api_view(['GET'])
def RESULT(request,  name, id, VotersOrganization, AspiringPosition):
    """
    A function for rendering the result to the voters after the poll has been closed. 
    """
    try:
        user = Voters.objects.get(FullName=name, identity=id)
    except Voters.DoesNotExist:
        return Response({})
    try:
        result = Contestant.objects.filter(Validate_organization=VotersOrganization, position=AspiringPosition)
    except Contestant.DoesNotExist:
        return Response({})
    serializer = ContestantSerializer(result, context={'request': request}, many=True)
    return Response(serializer.data)

{
   "FullName" : "Nworah",
    "email" : "nworah6@gmail.com",
    "identity" : 1111,
    "password" : 1111,
    "organization" : "Backend Engineers Organization",
    "Validate_organization" : "Backend Engineers Organization"

}

{
   "FullName" : "Nworah",
    "position" : "CEO",
    "organization" : "Backend Engineers Organization",
    "Validate_organization" : "Backend Engineers Organization"

}