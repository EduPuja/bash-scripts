#!/bin/bash

# Carpeta base de documentos del usuario en Windows
ruta="$USERPROFILE/Documents"

echo "========================================"
echo "Revisando la carpeta de DOCUMENTOS de $USER"
echo "Ruta: $ruta"
echo "========================================"
echo

# --- Comprobar si existe la carpeta pdf ---
if [ ! -d "$ruta/pdf" ]; then
    echo "Creando la carpeta $ruta/pdf ..."
    mkdir "$ruta/pdf"
fi

# --- Mover archivos PDF ---
if ls "$ruta"/*.pdf 1> /dev/null 2>&1; then
    echo "Moviendo los archivos PDF a la carpeta $ruta/pdf ..."
    mv "$ruta"/*.pdf "$ruta/pdf/"
else
    echo "No se encontraron archivos PDF en $ruta."
fi
