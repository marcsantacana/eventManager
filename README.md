# eventManager

Este script de Bash permite gestionar archivos log en un directorio específico. Las funcionalidades incluyen la búsqueda de archivos log, la compresión de los archivos más antiguos y la eliminación de aquellos que superen una cierta antigüedad.

## Funcionalidades

El programa ofrece las siguientes funcionalidades:

1. **Buscar archivos log en un directorio**
    - Permite al usuario introducir un directorio y listar todos los archivos con la extensión `.log` dentro de ese directorio.

2. **Comprimir archivos log más antiguos**
    - Permite al usuario definir un número de días, y todos los archivos `.log` que sean más antiguos que ese número de días serán comprimidos en formato `.gz`.

3. **Eliminar archivos log más antiguos**
    - Permite al usuario definir un número de días, y todos los archivos `.log.gz` que sean más antiguos que ese número de días serán eliminados.

4. **Salida del programa**
    - Después de completar las acciones, el programa finaliza con un mensaje de cierre.

## Uso

1. Clona o descarga el script en tu máquina.
2. Asegúrate de tener permisos de ejecución:
    ```bash
    chmod +x eventManager.sh
    ```
3. Ejecuta el script:
    ```bash
    ./eventManager.sh
    ```
4. Sigue las instrucciones para introducir el directorio, el número de días para comprimir y eliminar los archivos log.

## Requisitos

- El script utiliza los comandos `find`, `gzip` y `rm` para gestionar los archivos log.
- Asegúrate de tener permisos para leer, escribir y eliminar archivos en el directorio especificado.

## Notas

- El directorio introducido debe ser válido y accesible.
- Los archivos más antiguos serán comprimidos y eliminados de acuerdo con los días especificados. Una vez eliminados, los archivos no podrán recuperarse.
- El script utiliza el comando `sleep` para simular pausas durante la ejecución, lo que ayuda a mejorar la experiencia del usuario.

## Licencia

Este proyecto está bajo la Licencia MIT
