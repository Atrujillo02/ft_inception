
FROM debian:buster

RUN apt-get update && apt-get install -y apt-utils

RUN apt update -y &&  apt upgrade -y

RUN apt install nginx -y

RUN apt install openssl -y

RUN mkdir -p /etc/nginx/ssl

# Generar un certificado SSL auto-firmado
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=SP/ST=MLG/L=Malaga/O=42/OU=42Malaga/CN=atrujill.42.fr/UID=atrujill"

RUN mkdir -p /var/run/nginx

# Copiar la configuración de NGINX personalizada
COPY conf/nginx.conf /etc/nginx/nginx.conf

RUN chmod 755 /var/www/html

RUN chown -R www-data:www-data /var/www/html

CMD ["nginx", "-g", "daemon off;"]