from django import forms
from .models import Voters, Organizations, Contestant


class VotersForm(forms.ModelForm):
    """An automatic generated form for Voters"""
    class Meta:
       model = Voters
       fields = ('FullName', 'email', 'identity', 'password', 'organization', 'Validate_organization')


class OrganizationForm(forms.ModelForm):
    """An automatic generated form for Organizations"""
    class Meta:
       model = Organizations
       fields = ('name', 'members', 'password', 'identity')


class ContestantForm(forms.ModelForm):
    """An automatic generated form for Contestant"""
    class Meta:
       model = Contestant
       fields = ('FullName', 'position', 'organization', 'Validate_organization')

class VotersLoginForm(forms.Form):
    """A signin form for voters"""
    FullName = forms.CharField()
    identity = forms.CharField()
    password = forms.CharField()
    organization = forms.CharField()
    Validate_organization = forms.CharField()
    position = forms.CharField()
