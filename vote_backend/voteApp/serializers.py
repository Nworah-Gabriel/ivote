from .models import Organizations, Voters, Contestant
from rest_framework import serializers

class OrganizationsSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Organizations
        fields = ['name', 'members', 'password', ]


class VotersSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Voters
        fields = ['FullName', 'id', 'email', 'password', 'organization']
    

class ContestantSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Contestant
        fields = ['FullName', 'position', 'vote_count', 'supporters', 'organization']