### Primer paso
Debes construir un docker personalizado que incluye el servidor openssh

    docker build -t server:16.04 .

En el paso anterior debes verificar el ID de la imágen que se creó y seleccionarla para los pasos a continuación.

### Segundo paso

Ahora debes crear un conjunto de maquinas para pruebas, modifica el archivo "create_dockers.sh ajustando los parametros que consideres necesarios para lanzar los dockers que se ajusten al experimento que diseñes."

    ./create_dockers.sh <cantidad de maquinas> <server:16.04>

### Tercer paso, configuración de alias
Opción 1: edita el archivo /etc/hosts y adiciona 3 alias a localhost

    127.0.0.1       server01 server02 server03

Opción 2:

    echo "127.0.0.1 server01 server02 server03" | sudo tee -a /etc/hosts

### Cuarto paso, confirmación
Realiza una prueba de conexión a las maquinas que se crearon recientemente, por defecto el paso anterior crea n cantidad de dockers con el puerto 222n abiertos para conexión, iniciando con n igual a 1:

    ssh root@server01 -p 2221 -i key.private

Si la conexión se establece, ya está listo el banco de pruebas y puedes ingresar a ansible001.
