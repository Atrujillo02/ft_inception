DOCK_COMP_FILE = ./srcs/docker-compose.yml

all: build up

build:
	docker-compose -f $(DOCK_COMP_FILE) build

up:
	docker-compose -f $(DOCK_COMP_FILE) up -d

down:
	docker-compose -f $(DOCK_COMP_FILE) down

clean: down volumes_clean
	docker system prune -f

volumes_clean:
	docker volume rm -f srcs_mariadb_data srcs_wordpress
	sudo rm -rf /home/inception/data/mariadb/*
	sudo rm -rf /home/inception/data/wordpress/*

stop:
	docker-compose -f $(DOCK_COMP_FILE) stop

rm:
	docker-compose -f $(DOCK_COMP_FILE) rm -f

volum:
	sudo rm -rf /home/inception/data/mariadb/*
	sudo rm -rf /home/inception/data/wordpress/*

prune:
	docker system prune -af

re: clean all