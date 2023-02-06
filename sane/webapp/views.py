from django.http import HttpResponse
from django.shortcuts import render

from naves.models import Nave


# Create your views here.
def inicio(request):
    no_naves = Nave.objects.count()
    naves = Nave.objects.all()
    return render(request, 'inicio.html', {'no_naves': no_naves, 'naves': naves})

def busqueda(request):
    busnav = request.GET['busnav']
    naves = Nave.objects.filter(nombre__icontains=busnav)
    #tipo = Nave.objects.filter(tipo__icontains=busnav)
    nacionalidad = Nave.objects.filter(nacionalidad__icontains=busnav)
    anoLanza = Nave.objects.filter(ano_lanza__icontains=busnav)
    combustible = Nave.objects.filter(combustible__icontains=busnav)
    return render(request, 'inicio.html', {'res': naves | nacionalidad | anoLanza | combustible ,'naves': naves | nacionalidad | anoLanza | combustible })
