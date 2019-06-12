from django.db import models


class Servico(models.Model):
    class Meta:
        db_table = 'tb_servico'

    id = models.AutoField(primary_key=True, editable=False, auto_created=True)
    servico = models.CharField(max_length=100)
    preco = models.DecimalField(max_digits=4, decimal_places=2)
    tempo = models.IntegerField()
    icone = models.URLField(max_length=255)
    criado = models.DateTimeField(auto_now=True)
    ativo = models.BooleanField(default=True)

    databse = 'db_jcc'

    def __str__(self):
        return self.servico
