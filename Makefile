###############################################################################
## Makefile - zammad-docker-compose                                          ##
###############################################################################

build-prod:
	@echo
	@echo "+++ build / run Helpdesk +++"
	sudo sysctl -w vm.max_map_count=262144
	docker-compose -f docker-compose.prod.yml -f docker-compose.addition.prod.yml up -d

update-build-prod:
	@echo
	@echo "+++ update Helpdesk +++"
	docker-compose -f docker-compose.prod.yml -f docker-compose.addition.prod.yml pull

shutdown-prod:
	@echo
	@echo "+++ shutdown Helpdesk +++"
	docker-compose -f docker-compose.prod.yml -f docker-compose.addition.prod.yml down

build-dev:
	@echo
	@echo "+++ build / run Helpdesk +++"
	sudo sysctl -w vm.max_map_count=262144
	docker-compose -f docker-compose.dev.yml -f docker-compose.addition.dev.yml up -d

update-build-dev:
	@echo
	@echo "+++ update Helpdesk +++"
	docker-compose -f docker-compose.dev.yml -f docker-compose.addition.dev.yml pull

shutdown-dev:
	@echo
	@echo "+++ shutdown Helpdesk +++"
	docker-compose -f docker-compose.prod.yml -f docker-compose.addition.prod.yml down