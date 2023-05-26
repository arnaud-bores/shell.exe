#!/bin/bash

if [ $# -ne 2 ]; then

echo "Usage: $0 <nom_fichier_destination> <nom_fichier_source>"
exit 1
fi

nom_fichier_destination=$1
nom_fichier_source=$2

cat "$nom_fichier_source" > "$nom_fichier_destination"

echo "Le fichier $nom_fichier_destination a été crée avec succés et rempli avec le contenu du fichier $nom_fichier_sources."
