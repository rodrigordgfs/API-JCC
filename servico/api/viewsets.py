from rest_framework.authentication import TokenAuthentication
from rest_framework.permissions import IsAuthenticated
from rest_framework.viewsets import ModelViewSet
from servico.models import Servico
from .serializers import ServicoSerializer


class ServicoViewSet(ModelViewSet):
    queryset = Servico.objects.all()
    permission_classes = (IsAuthenticated,)
    authentication_classes = (TokenAuthentication,)
    serializer_class = ServicoSerializer

    # def get_queryset(self):
    #     return Servico.objects.filter()
