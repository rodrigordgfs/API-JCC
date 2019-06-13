# Generated by Django 2.2.2 on 2019-06-13 12:07

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('servico', '0004_auto_20190612_0913'),
        ('horario_agendado', '0004_merge_20190613_0907'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='horarioagendado',
            name='servico',
        ),
        migrations.AddField(
            model_name='horarioagendado',
            name='servico',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.PROTECT, to='servico.Servico'),
            preserve_default=False,
        ),
    ]
