#!/bin/bash

echo " "
echo "Activitat 9: Gestor d'Arxius Log"
echo " "
echo "Iniciant programa..."
sleep 3
echo " "

# Demana a l'usuari el directori específic
read -p "Introdueix el directori on buscar els arxius log: " directori

# Comprova si el directori existeix
if [ ! -d "$directori" ]; then
	echo "El directori $directori no existeix."
	exit 1
fi

# Troba i llista tots els arxius log en el directori específic
echo "Llistant tots els arxius log en el directori $directori:"
find "$directori" -name "*.log"

# Demana a l'usuari el nombre de dies per comprimir els arxius log
read -p "Introdueix el nombre de dies per comprimir els arxius log més antics: " dies_comprimir

# Comprimeix els arxius log més antics de X dies
echo "Comprimint els arxius log més antics de $dies_comprimir dies..."
find "$directori" -name "*.log" -mtime +$dies_comprimir -exec gzip {} \;

# Demana a l'usuari el nombre de dies per eliminar els arxius log
read -p "Introdueix el nombre de dies per eliminar els arxius log més antics: " dies_eliminar

# Elimina arxius log que superin una certa antiguitat
echo "Eliminant els arxius log més antics de $dies_eliminar dies..."
find "$directori" -name "*.log.gz" -mtime +$dies_eliminar -exec rm {} \;

echo "Gestió d'arxius log completada!"
echo " "
echo "Tancant programa..."
sleep 3
echo " "
