#!/bin/bash

# Chemin vers le dossier Backup
backup_dir="./Backup"

# Obtention de la date et de l'heure actuelles au format jj-mm-aaaa-HH:MM
date=$(date +"%d-%m-%Y-%H:%M")

# Extraction du nombre de connexions à votre session depuis les logs
number_connections=$(grep -c "votre_session" /var/log/auth.log)

# Nom du fichier contenant le nombre de connexions
filename="number_connection-$date.txt"

# Chemin complet du fichier
filepath="$backup_dir/$filename"
# Écriture du nombre de connexions dans le fichier
echo "$number_connections" > "$filepath"

# Création de l'archive tar
tar -czf "$filepath.tar.gz" "$filepath"

# Déplacement de l'archive dans le dossier Backup
rm  "$filepath"
