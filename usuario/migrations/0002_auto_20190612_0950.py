# Generated by Django 2.2.2 on 2019-06-12 12:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('usuario', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='usuario',
            name='telefone',
            field=models.CharField(blank=True, max_length=11, null=True),
        ),
    ]
