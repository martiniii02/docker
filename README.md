# MINIDLNA SERVICIO EN DOCKER 
## by Marti Alorda
Requerimientos:
Docker instalado en tu máquina.
 
Que se necesita?:

Dockerfile: Archivo que define la imagen que se utilizará para el contenedor. En este caso, se utilizará una imagen de Ubuntu 20.04 LTS y se instalará MiniDLNA para cargar archivos de video.

docker-compose.yml: Archivo que define cómo se ejecutará el contenedor. En este caso, se mapeará el puerto 8200 del contenedor al puerto 8200 de la máquina host y se montará una carpeta media del host al contenedor para cargar archivos de video.

Video: Lo que se va a reproducir

minidlna.conf: Configuracion básica del minidlna para su uso

Pasos:
1. Coloca un archivo de video en la carpeta media que se creó.

2. Desde la terminal, navega a la carpeta del proyecto y ejecuta el siguiente comando para construir la imagen y ejecutar el contenedor:
docker-compose up --build

(Este comando construirá la imagen utilizando el archivo Dockerfile y luego ejecutará el contenedor utilizando las configuraciones definidas en el archivo docker-compose.yml.)

3. Abre un navegador y dirígete a http://localhost:8200 para acceder a la página de MiniDLNA y cargar el archivo de video.

4. Abre VLC en tu computadora.

5. En el menú de navegación, selecciona "Media" y luego "Abrir red..." o presiona Ctrl + N.

6. En el cuadro de diálogo que aparece, ingresa la siguiente URL: http://localhost:8200/

7. Marca la casilla "Usar miniDLNA UPnP AV".

8. Haz clic en "Reproducir" para cargar la lista de archivos disponibles en MiniDLNA.

9. Selecciona el archivo de video que cargaste en la carpeta media.

10. Haz clic en "Reproducir" para comenzar la reproducción del video.

