#!/bin/bash

#Verifica si el usuario a puesto un argumento 
#En el caso de que no haya puesto un argumento al llamar al script se ejecuta el if
if [ -z "$1" ]; then
    echo "Como se debe de usar: "
    echo "pylog.sh <nombre_de_la_carpeta"
    exit 1
fi

#si el usuario a puesto el argmento necesario se ejecuta el siguiente bloque de codigo
#El argumento se guarda en esta varible
nombre="$1"
#Crea una carpeta con el argumento dado
mkdir "$nombre"

#Ingresa a la carpeta creada
cd "$nombre"
#Prepara la carpeta para virtualizar python y hacerlo en un ambiente seguro
python -m venv .venv
#Para finalizar crea un archivo main
touch main.py

#Muestra un mensaje de confirmacion
echo "¡Carpeta creada con exito!"
