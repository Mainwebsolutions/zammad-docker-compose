###############################################################################
## Makefile - zammad-docker-compose                                          ##
###############################################################################

build:
	@echo
	@echo "+++ build / run Helpdesk +++"
	docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d
