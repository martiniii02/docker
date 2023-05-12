# Usamos la version mas actulizada de Ubuntu
FROM ubuntu:latest

# Actualizamos sistema
RUN apt update && apt-get upgrade -y

# Exponemos puertos para que funcione MiniDLNA
EXPOSE 1900 8200

# Expose port 80 to the host
RUN apt-get install -y minidlna

# Le pasamos el video que vamos a reproducir
COPY video.mp4 /data/video.mp4

# Le pasamos la configuracion de minidlna con las modificaciones hechas
COPY minidlna.conf /etc/minidlna.conf

# Levantamos el minidlna 
CMD ["/usr/sbin/minidlnad", "-d"]
