FROM debian:bullseye

RUN apt-get update && apt-get install -y apt-utils \ 
     && apt-get upgrade -y \ 
     && apt-get install mariadb-server -y

COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf

COPY tools/entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["bash", "entrypoint.sh"]