###############################################################################
## Makefile - zammad-docker-compose                                          ##
###############################################################################

build-prod:
	@echo
	@echo "+++ build / run Helpdesk +++"
	sudo sysctl -w vm.max_map_count=262144
	docker-compose -f docker-compose.prod.yml -f docker-compose.addition.prod.yml up -d

shutdown-prod:
	@echo
	@echo "+++ shutdown Helpdesk +++"
	docker-compose -f docker-compose.prod.yml -f docker-compose.addition.prod.yml down

build-dev:
	@echo
	@echo "+++ build / run Helpdesk +++"
	sudo sysctl -w vm.max_map_count=262144
	docker-compose -f docker-compose.dev.yml -f docker-compose.addition.dev.yml up -d

shutdown-dev:
	@echo
	@echo "+++ shutdown Helpdesk +++"
	docker-compose -f docker-compose.prod.yml -f docker-compose.addition.prod.yml down