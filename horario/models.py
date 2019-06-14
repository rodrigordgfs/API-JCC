from django.db import models


class Horario(models.Model):
    class Meta:
        db_table = 'tb_horario'

    id = models.AutoField(primary_key=True, editable=False)
    horario = models.TimeField(unique=True)
    ativo = models.BooleanField(default=True)

    database = 'db_jcc'

    def __str__(self):
        return self.horario
