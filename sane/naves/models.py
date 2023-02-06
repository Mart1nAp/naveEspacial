from django.db import models

# Create your models here.
class Tipo(models.Model):
    tipo_nave = models.CharField(max_length=259)
    def __str__(self):
        return f'Nave {self.tipo_nave}'

class Nave(models.Model):
    tipo = models.ForeignKey(Tipo, on_delete=models.SET_NULL, null=True)
    nombre = models.CharField(max_length=200)
    nacionalidad = models.CharField(max_length=200)
    ano_lanza = models.CharField(max_length=200)
    combustible = models.CharField(max_length=200)

    def __str__(self):
        return f'Nave {self.id}: {self.tipo} {self.nombre} {self.nacionalidad} {self.ano_lanza} {self.combustible}'
