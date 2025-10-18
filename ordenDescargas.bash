#!/bin/bash

# Carpeta base de descargas del usuario en Windows
ruta="$USERPROFILE/Downloads"

echo "========================================"
echo " Organizando descargas de $USER"
echo " Ruta: $ruta"
echo "========================================"
echo

# Verificar que la carpeta de descargas existe
if [ ! -d "$ruta" ]; then
    echo "❌ La carpeta $ruta no existe."
    exit 1
fi

# === Archivos .exe y .msi ===
if [ ! -d "$ruta/exe" ]; then
    echo "Creando carpeta $ruta/exe ..."
    mkdir "$ruta/exe"
fi

if ls "$ruta"/*.exe 1> /dev/null 2>&1; then
    mv "$ruta"/*.exe "$ruta/exe/"
fi

if ls "$ruta"/*.msi 1> /dev/null 2>&1; then
    mv "$ruta"/*.msi "$ruta/exe/"
fi

# === Archivos .zip ===
if [ ! -d "$ruta/zip" ]; then
    echo "Creando carpeta $ruta/zip ..."
    mkdir "$ruta/zip"
fi

if ls "$ruta"/*.zip 1> /dev/null 2>&1; then
    mv "$ruta"/*.zip "$ruta/zip/"
fi

echo
echo "✅ Organización completada correctamente para el usuario $USER."
