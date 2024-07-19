#!/bin/bash

# Créer les répertoires s'ils n'existent pas déjà
mkdir -p Docker Kubernetes Mysql Bash Ansible Jenkins

# Déplacer tous les fichiers PDF contenant les mots spécifiques dans le répertoire respectif
for file in *.pdf; do
    if [[ "$file" =~ ^(Docker|Mastering Docker) ]]; then
        mv "$file" Docker/
    elif [[ "$file" =~ ^(Kubernetes|Mastering Kubernetes) ]]; then
        mv "$file" Kubernetes/
    elif [[ "$file" =~ ^(Mysql|Mastering Mysql) ]]; then
        mv "$file" Mysql/
    elif [[ "$file" =~ ^(Bash|Mastering Bash) ]]; then
        mv "$file" Bash/
    elif [[ "$file" =~ ^(Ansible|Mastering Ansible) ]]; then
        mv "$file" Ansible/
    elif [[ "$file" =~ ^(Jenkins|Mastering Jenkins) ]]; then
        mv "$file" Jenkins/
    fi
done

echo "The job is done!."
