"""core URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
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
from rest_framework import routers
from rest_framework.authtoken.views import obtain_auth_token
from horario.api.viewsets import HorarioViewSet
from servico.api.viewsets import ServicoViewSet
from usuario.api.viewsets import UsuarioViewSet
from horario_agendado.api.viewsets import HorarioAgendadoViewSet

routers = routers.DefaultRouter(trailing_slash=False)
routers.register(r'api/v1/horario', HorarioViewSet, base_name='Horario')
routers.register(r'api/v1/servico', ServicoViewSet, base_name='Servico')
routers.register(r'api/v1/usuario', UsuarioViewSet, base_name='Usuario')
routers.register(r'api/v1/horario-agendado', HorarioAgendadoViewSet, base_name='HorarioAgendado')

urlpatterns = [
    path('', include(routers.urls)),
    path('api-token-auth', obtain_auth_token),
    path('admin', admin.site.urls),
]
