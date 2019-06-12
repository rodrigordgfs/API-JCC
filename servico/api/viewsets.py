from rest_framework.viewsets import ModelViewSet
from servico.models import Servico
from .serializers import ServicoSerializer


class ServicoViewSet(ModelViewSet):
    serializer_class = ServicoSerializer

    def get_queryset(self):
        Servico.objects.filter(ativo=True)
