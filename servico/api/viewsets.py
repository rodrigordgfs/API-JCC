from rest_framework.viewsets import ModelViewSet
from servico.models import Servico
from .serializers import ServicoSerializer


class ServicoViewSet(ModelViewSet):
    queryset = Servico.objects.all()
    serializer_class = ServicoSerializer

    # def get_queryset(self):
    #     return Servico.objects.filter()
