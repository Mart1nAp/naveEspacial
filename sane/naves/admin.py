from django.contrib import admin

from naves.models import *

# En este archivo se tienen que registrar los modelos que se hayan creado en el archivo models.py
admin.site.register(Nave)
admin.site.register(Tipo)