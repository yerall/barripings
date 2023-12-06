# Escaneo de Red con Bash

Este script en Bash permite realizar un barrido de pings en una red específica para determinar qué hosts están activos. El objetivo principal es proporcionar una lista de direcciones IP activas en una red dada.

## Uso
### Ejecución Básica
Esto escaneará la red 192.168.1 y mostrará las direcciones IP activas.

```bash
chmod +x barripings.sh
./barripings.sh 192.168.1
```

### Ejemplo de salida
```bash
192.168.100.1
192.168.100.36
192.168.100.69
192.168.100.70
192.168.100.68
```

### Guardar Resultados
Esto guardará los resultados en un archivo llamado `archivo.txt`.
```bash
./barripings.sh 192.168.1 >> archivo.txt
```

### Escaneo Adicional con Nmap
Este comando escanea cada una de las direcciones IP guardadas en `archivo.txt` utilizando Nmap.
```bash
for ip in $(cat archivo.txt); do nmap $ip ; done
```
