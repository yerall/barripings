#!/bin/bash

if [ "$1" == "" ]; then
    echo "Olvidaste la dirección de red! "
    echo "Sintaxis correcta: $0 192.168.1"
else
    for ip in $(seq 1 254); do
        ping -c 1 "$1.$ip" | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
    done
    wait # Espera a que todos los pings se completen antes de continuar
fi
