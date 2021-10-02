DOCKER_COMPOSE_FILE=./docker-compose.yml

.PHONY: run _run
run: _run

_run:
	docker-compose -f $(DOCKER_COMPOSE_FILE) up -d

.PHONY: down _down
down: _down

_down: 
	docker-compose -f $(DOCKER_COMPOSE_FILE) down --remove-orphans

.PHONY: shell 
shell: 
	docker-compose -f $(DOCKER_COMPOSE_FILE) run --rm web /bin/sh

