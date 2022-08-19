# Generated by Django 4.1 on 2022-08-15 18:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('sistema', '0002_alter_usuario_options_alter_usuario_table'),
    ]

    operations = [
        migrations.AlterField(
            model_name='usuario',
            name='direccion',
            field=models.CharField(max_length=100, null=True, verbose_name='Direccion residencia'),
        ),
        migrations.AlterField(
            model_name='usuario',
            name='segundoNombre',
            field=models.CharField(max_length=50, null=True, verbose_name='Segundo nombre'),
        ),
        migrations.AlterField(
            model_name='usuario',
            name='telefono',
            field=models.CharField(max_length=50, null=True, verbose_name='Telefono contacto'),
        ),
    ]