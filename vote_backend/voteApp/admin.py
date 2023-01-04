from django.contrib import admin
from .models import Organizations, Voters, Contestant

# Register your models here.
admin.site.register(Organizations)
admin.site.register(Voters)
admin.site.register(Contestant)