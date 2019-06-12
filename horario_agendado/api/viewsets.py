from rest_framework.viewsets import ModelViewSet
from horario_agendado.models import HorarioAgendado
from .serializers import HorarioAgendadoSerializer


class HorarioAgendadoViewSet(ModelViewSet):
    queryset = HorarioAgendado.objects.all()
    serializer_class = HorarioAgendadoSerializer
