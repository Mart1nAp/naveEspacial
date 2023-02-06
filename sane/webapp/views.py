from django.http import HttpResponse
from django.shortcuts import render

from naves.models import Nave, Tipo


# Create your views here. Se crean las vistas y funciones que se llaman en el frond
def inicio(request):
    #Enumera el numero de registros que hay
    no_naves = Nave.objects.count()
    #Muestra la totalidad de registros que hay
    naves = Nave.objects.all()
    return render(request, 'inicio.html', {'no_naves': no_naves, 'naves': naves})

def busqueda(request):
    # Se define una variable que obtenga(GET) los caracteres que se agregan a la barra de busqueda definida en el html,
    # el caracter 'busnav' que esta dentro del GET es el nombre que se definio al input de la barra de busqueda que esta en inicio.html
    busnav = request.GET['busnav']
    # Se procede a utilizar la funcion filter para que filtre los caracteres obtenidos en el input
    naves = Nave.objects.filter(nombre__icontains=busnav)
    nacionalidad = Nave.objects.filter(nacionalidad__icontains=busnav)
    anoLanza = Nave.objects.filter(ano_lanza__icontains=busnav)
    combustible = Nave.objects.filter(combustible__icontains=busnav)
    # retorna la busqueda y se muestran en el inicio.html
    return render(request, 'inicio.html', {'res': naves | nacionalidad | anoLanza | combustible ,'naves': naves | nacionalidad | anoLanza | combustible})
