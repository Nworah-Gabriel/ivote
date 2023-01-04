from django.db import models

# Create your models here.
class Organizations(models.Model):
    """A database model created for Organizations"""
    name = models.CharField(max_length=50)
    password = models.CharField(max_length=30)
    members = models.ManyToManyField(to='Voters', blank=True)
    identity = models.BigIntegerField(default=00000000)
    def __str__(self):
        return self.name

class Voters(models.Model):
    """A database model created for Voters"""
    FullName = models.CharField(max_length=150, default='User')
    email = models.EmailField()
    identity = models.BigIntegerField(null=False, blank=False, default=00000000)
    password = models.CharField(max_length=30)
    organization = models.ForeignKey(to='Organizations', on_delete=models.CASCADE)
    Validate_organization = models.CharField(max_length=150, default='Retype organization')

    def __str__(self):
        return self.FullName

class Contestant(models.Model):
    """A database model created for Contestant"""
    FullName = models.CharField(max_length=150, default='Contester')
    position = models.CharField(max_length=30)
    vote_count = models.IntegerField(default=0)
    supporters = models.ManyToManyField(to='Voters', blank=True)
    organization = models.ForeignKey(to='Organizations', on_delete=models.CASCADE)
    Validate_organization = models.CharField(max_length=150, default='Retype organization')

    
    def __str__(self):
        return self.FullName