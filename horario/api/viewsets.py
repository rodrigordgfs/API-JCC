from rest_framework.viewsets import ModelViewSet
from horario.models import Horario
from .serializers import HorarioSerializer


class HorarioViewSet(ModelViewSet):
    serializer_class = HorarioSerializer

    def get_queryset(self):
        return Horario.objects.filter(ativo=True)
