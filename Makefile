.PHONY: build
build:
	docker-compose build

.PHONY: dev
dev:
	docker-compose up

.PHONY: bash
bash:
	docker-compose run --rm api bash

.PHONY: down
down:
	docker-compose down

.PHONY: destroy
destroy:
	docker-compose down --rmi all --volumes
