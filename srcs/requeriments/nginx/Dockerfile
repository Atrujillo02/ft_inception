
FROM debian:buster

RUN apt-get update && apt-get install -y apt-utils

RUN apt update -y &&  apt upgrade -y

RUN apt install nginx -y

RUN apt install openssl -y

RUN mkdir -p /etc/nginx/ssl

# Generar un certificado SSL auto-firmado
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/nginx.key -out /etc/nginx/ssl/nginx.crt -subj "/C=SP/ST=MLG/L=Malaga/O=42/OU=42Malaga/CN=atrujill.42.fr/UID=atrujill"

# Copiar la configuración de NGINX personalizada
COPY ./conf/nginx.conf /etc/nginx/nginx.conf

RUN chmod 755 /var/www/html

RUN chown -R www-data:www-data /var/www/html

CMD ["nginx", "-g", "daemon off;"]