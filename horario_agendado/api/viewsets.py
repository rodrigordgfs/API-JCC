from rest_framework.authentication import TokenAuthentication
from rest_framework.permissions import IsAuthenticated
from rest_framework.viewsets import ModelViewSet
from horario_agendado.models import HorarioAgendado
from .serializers import HorarioAgendadoSerializer


class HorarioAgendadoViewSet(ModelViewSet):
    queryset = HorarioAgendado.objects.all()
    permission_classes = (IsAuthenticated,)
    authentication_classes = (TokenAuthentication,)
    serializer_class = HorarioAgendadoSerializer
