from django.db import models


class Usuario(models.Model):
    class Meta:
        db_table = 'tb_usuario'

    id = models.CharField(primary_key=True, max_length=30)
    nome = models.CharField(max_length=100)
    imagem = models.URLField()
    telefone = models.CharField(max_length=11, blank=True, null=True)

    database = 'db_jcc'

    def __str__(self):
        return self.nome
