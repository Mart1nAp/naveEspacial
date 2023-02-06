from django.forms import modelform_factory
from django.http import Http404
from django.shortcuts import render, redirect
from django.db.models import Q

from naves.models import Nave


# Create your views here.
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

# def busquedaDB(request, palabra):
#     palabra = input('Ingrese el nombre a buscar: ')
#     # Realizar consulta a la base de datos usando el modelo correspondiente
#     resultado = Nave.objects.filter(Q(nombre__icontains=palabra))
#     # Devolver resultados filtrados con la función filter
#     resulNave = filter(lambda x: palabra in x.nombre, resultado)
#     return render(request, 'naves/busqueda.html', {'resultado': resulNave})
