# Generated by Django 4.1.6 on 2023-02-04 22:22

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Naves',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tipo', models.CharField(max_length=200)),
                ('nombre', models.CharField(max_length=200)),
                ('nacionalidad', models.CharField(max_length=200)),
                ('ano_lanza', models.CharField(max_length=200)),
                ('combustible', models.CharField(max_length=200)),
            ],
        ),
    ]