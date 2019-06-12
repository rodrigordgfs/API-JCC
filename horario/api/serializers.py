from rest_framework.serializers import ModelSerializer
from horario.models import Horario


class HorarioSerializer(ModelSerializer):
    class Meta:
        model = Horario
        fields = ('id', 'horario')
