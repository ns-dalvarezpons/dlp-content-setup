# Reusable list of commands to set up environment
define setup_env
	export $(shell grep -v '^#' .env | sed 's/=.*//' | xargs); \
	DEVX_VER=$$(docker images | grep svcbuilder | awk '{print $$2}'); \
	export DEVX_VER;
endef

# Phony targets
.PHONY: help build clean

# Default target
help: ## Show this help message
	@echo "Available commands:"
	@awk 'BEGIN {FS = ":.*##"} /^[a-zA-Z_-]+:.*##/ {printf "  %-10s - %s\n", $$1, $$2}' $(MAKEFILE_LIST)

build: build_svcbuilder ## Build the project
	@$(setup_env) \
	docker-compose build

start: ## Start the project
	@$(setup_env) \
	docker-compose up -d --remove-orphans

stop: ## Stop the project
	@$(setup_env) \
	docker-compose down

dev-%: ## Open a terminal in the chosen service: edk, dataplane, service, tooling, dataplane-test-data
	@$(setup_env) \
	docker-compose exec -it $* bash

clean: stop ## Clean up generated files
	@echo "Cleaning up..."
	docker rm -f $(docker ps -aq) 2>/dev/null || true
	docker rmi $$(docker images -q) -f 2>/dev/null || true

build_svcbuilder: ## Build the svcbuilder image
	@echo "Building svcbuilder image..."
	cd ../service && ./setup-devx-2004.sh minimaldev exit;
