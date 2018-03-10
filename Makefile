###############################################################################
## Makefile - zammad-docker-compose                                          ##
###############################################################################

build-prod:
	@echo
	@echo "+++ build / run Helpdesk +++"
	sudo sysctl -w vm.max_map_count=262144
	docker-compose -f docker-compose.prod.yml -f docker-compose.addition.prod.yml up -d

build-dev:
	@echo
	@echo "+++ build / run Helpdesk +++"
	sudo sysctl -w vm.max_map_count=262144
	docker-compose -f docker-compose.dev.yml -f docker-compose.addition.dev.yml up -d