#!/bin/bash
#Autor: Ariel Anonis - @ariel_anonis

clear
echo -e '\e[1;34m------------------------------------\e[0m'
echo -e '\e[1;33m Analisis Automatizado de Archivos  \e[0m'
echo ""
echo -e '\e[1;31m Para utilizar en forensia digital  \e[0m'
echo -e '\e[1;34m------------------------------------\e[0m'
echo ""
sleep 2;

echo -e '\e[1;35m Listando Carpetas y Archivos... \e[0m'
ls -laiRtu > ListadodeCarpetas.txt
sleep 2;
echo ""
echo -e 'Listado de Carpetas y Archivos realizados con Exito!!! > \e[1;32m ListadodeCarpetas.txt \e[0m'
echo ""

echo -e '\e[1;35m Calculando Hashes Md5 y Sha1 de los Archivos... \e[0m'
sleep 1;
echo "Esto puede tardar unos minutos dependiendo la cantidad y tamaños de los archivos."
find . -type f -exec md5sum {} \; > Md5Archvios.txt
find . -type f -exec sha1sum {} \; > Sha1Archivos.txt
echo ""
sleep 2;
echo -e 'Hashes Calculados con Exito!!! > \e[1;32m Sha1Archivos.txt, Md5Archvios.txt \e[0m'
echo ""

echo -e '\e[1;35m Analizando Cabeceras de Archivos... \e[0m'
find . -type f -exec file {} \; > CabecerasArchivos.txt
sleep 2;
echo 
echo -e 'Cabeceras analizadas con Exito!!! > \e[1;32m CabecerasArchivos.txt \e[0m'
echo ""

echo -e '\e[1;35m Analizando Metadatos de Archivos... \e[0m'
sleep 1;
echo "Esto puede tardar unos minutos dependiendo de la cantidad de archivos."
find . -type f -exec exiftool {} \; > MetadatosArchvios.txt
sleep 2;
echo ""
echo -e 'Analisis de Metadatos Realizado con Exito!!! > \e[1;32m MetadatosArchivos.txt \e[0m'
