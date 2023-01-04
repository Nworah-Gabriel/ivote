"""vote_backend URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from voteApp import views
from rest_framework import routers

router = routers.DefaultRouter()
router.register(r'users', views.OrganizationsViewSet)
router.register(r'users', views.votersViewSet)
router.register(r'users', views.ContestantViewSet)

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include(router.urls)),
    path('voters/', views.votersViewSet.as_view({'get': 'list'})),
    path('contestants/', views.ContestantViewSet.as_view({'get': 'list'})),
    path('organizations/', views.OrganizationsViewSet.as_view({'get': 'list'})),
    path('voters_register/', views.VotersRegistration),
    path('contestant_register/', views.ContestantRegistration),
    path('organization_register/', views.OrganizationRegistration),
    path('login/<str:name>/<int:id>/<int:key>/<str:VotersOrganization>/<str:AspiringPosition>/', views.VotersLogin),
    path('vote/<str:name>/<int:id>/<str:contestant>/<str:VotersOrganization>/<str:AspiringPosition>/', views.VOTE),
    path('result/<str:name>/<int:id>/<str:VotersOrganization>/<str:AspiringPosition>/', views.RESULT),
    # path('create-organization/', views.OrganizationForms),
    # path('contestant_registration/', views.ContestantForms),
    # path('login/', views.VotersLogin),
    # path('vote/', views.Vote),
    path('api-auth/', include('rest_framework.urls', namespace='rest_framework'))

]
