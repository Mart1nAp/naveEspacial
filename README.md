# Nave Espacial

El proyecto nave espacial esta desarrollado en Python apoyado del framework Django, para el fronted se utilizo html con boostrap.

## Instalaciones

Django: py -m pip install django
Conector para conexion con postgresql: pip install psycopg2

##Base de datos
Para la base de datos se crea una database en postgresql llamada 'nave_espacial', esto para que Django reconozca la database y pueda hacer la configuración inicial.
Para efectos prácticos se agrega el archivo SQL dentro de la carpeta bd dentro del proyecto, paso siguiente se tiene que importar, se va a la opción restore:

![guia1](https://user-images.githubusercontent.com/111818427/217013148-97078257-d988-494d-ac82-d4a131f15011.jpg)

paso siguiente se busca la base de datos que se incluye en el proyecto y se restaura:

![guia2](https://user-images.githubusercontent.com/111818427/217013396-395e9598-705f-422c-9aae-feeed1830630.jpg)

para comprobar que ya funciona correctamente nos ubicamos en el directorio raíz para este caso 'sane' (C:\Cursos\sofka\naveEspacial\sane) y se ejecuta el comando en la terminal: py manage.py migrate' para comprobar que este correctamente conectado.

ya con la base importada y el comando ejecutado no habría problema para iniciar.




