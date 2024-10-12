#!/bin/bash

#Se crea la estructura asimetrica en HOME

mkdir -p $HOME/Estructura_Asimetrica/{{correo,cliente}/cartas_{1..100},correo/cartero_{1..10}}

echo "Se crearon los directorios en el Home del usuario"

#Se muestra con el TREE
tree $HOME/Estructura_Asimetrica/ --noreport | pr -T -s'' -w 80 --column 4
