from rest_framework.serializers import ModelSerializer
from servico.models import Servico


class ServicoSerializer(ModelSerializer):
    class Meta:
        model = Servico
        fields = ('id', 'servico', 'preco', 'tempo', 'icone')
