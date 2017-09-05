# Iniciando con Ansible

## Preliminares
Para realizar las prácticas debes tener instalado en el equipo o servidor de pruebas:
  - Docker
  - Python
  - Ansible: pip install ansible

### Primer paso
Debes construir un docker personalizado que incluye el servidor openssh

    cd ansible000
    docker build .

En el paso anterior debes verificar el ID de la imágen que se creó y seleccionarla para los pasos a continuación.

Ahora debes crear un conjunto de maquinas para pruebas, modifica el archivo "create_dockers.sh ajustando los parametros que consideres necesarios para lanzar los dockers que se ajusten al experimento que diseñes."

    ./create_dockers.sh <cantidad de maquinas> <id de la imagen>

Realiza una prueba de conexión a las maquinas que se crearon recientemente, por defecto el paso anterior crea n cantidad de dockers con el puerto 222n abiertos para conexión, iniciando con n igual a 0:

    ssh root@localhost -p 2220 -i ../key.private

Si la conexión se establece, ya está listo el banco de pruebas y puedes ingresar a ansible001.
