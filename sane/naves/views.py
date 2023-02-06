from django.forms import modelform_factory
from django.http import Http404
from django.shortcuts import render, redirect
from django.db.models import Q

from naves.models import Nave


# Create your views here. Estas vistas se refieren a la direccion que va a aparecer en
# la barra del navegador al momento de que haya interaccion con estas funciones.
def detalleNave(request, id):
    nave = Nave.objects.get(pk=id)
    return render(request, 'naves/detalle.html', {'nave': nave})

NaveForm = modelform_factory(Nave, exclude=[])

def nuevaNave(request):
    if request.method == 'POST':
        formaNave = NaveForm(request.POST)
        if formaNave.is_valid():
            formaNave.save()
            return redirect('inicio')
    else:
        formaNave = NaveForm()
    return render(request, 'naves/nuevo.html', {'formaNave': formaNave})


