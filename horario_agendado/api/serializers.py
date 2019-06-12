from rest_framework.serializers import ModelSerializer
from horario_agendado.models import HorarioAgendado
from usuario.api.serializers import UsuarioSerializer
from horario.api.serializers import HorarioSerializer
from servico.api.serializers import ServicoSerializer


class HorarioAgendadoSerializer(ModelSerializer):
    usuario = UsuarioSerializer()
    servico = ServicoSerializer()
    horario = HorarioSerializer()

    class Meta:
        model = HorarioAgendado
        fields = (
            'id',
            'data',
            'confirmado',
            'status',
            'usuario',
            'horario',
            'servico'
        )
