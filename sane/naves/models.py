from django.db import models

# Estos son los modelos que van a aparecer en el area de administrador de django
# Se agregan los metodos __str__ para que los datos se puedan visualizar correctamente
class Tipo(models.Model):
    tipo_nave = models.CharField(max_length=259)
    def __str__(self):
        return f'Nave {self.tipo_nave}'

class Nave(models.Model):
    tipo = models.ForeignKey(Tipo, on_delete=models.SET_NULL, null=True)
    imagen = models.ImageField(upload_to='imagenes', null=True, blank=True)
    nombre = models.CharField(max_length=200)
    nacionalidad = models.CharField(max_length=200)
    ano_lanza = models.CharField(max_length=200)
    combustible = models.CharField(max_length=200)

    def __str__(self):
        return f'Nave {self.id}: {self.tipo} {self.nombre} {self.nacionalidad} {self.ano_lanza} {self.combustible}'
