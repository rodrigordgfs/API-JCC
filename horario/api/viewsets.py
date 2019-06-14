from rest_framework.authentication import TokenAuthentication
from rest_framework.permissions import IsAuthenticated
from rest_framework.viewsets import ModelViewSet
from horario.models import Horario
from .serializers import HorarioSerializer


class HorarioViewSet(ModelViewSet):
    queryset = Horario.objects.all().order_by('horario')
    permission_classes = (IsAuthenticated,)
    authentication_classes = (TokenAuthentication,)
    serializer_class = HorarioSerializer

    # def get_queryset(self):
    #     return Horario.objects.filter(ativo=True)
