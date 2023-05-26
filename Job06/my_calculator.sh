#!/bin/bash

# Vérifier le nombre d'arguments
if [ $# -ne 3 ]; then
    echo "Usage: $0 <nombre1> <opération> <nombre2>"
    exit 1
fi

# Récupérer les arguments
nombre1=$1
operation=$2
nombre2=$3

# Vérifier l'opération demandée
case $operation in
    +)
        result=$(($nombre1 + $nombre2))
        ;;
    -)
        result=$(($nombre1 - $nombre2))
        ;;
    \*)
        result=$(($nombre1 * $nombre2))
        ;;
    /)
        result=$(($nombre1 / $nombre2))
        ;;
    *)
        echo "Opération non valide: $operation"
        exit 1
        ;;
esac

# Afficher le résultat
echo "Résultat: $result"

