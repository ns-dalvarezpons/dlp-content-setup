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

build: ## Build the project
	@$(setup_env) \
	docker-compose build

start: ## Start the project
	@$(setup_env) \
	docker-compose up -d --remove-orphans

stop: ## Stop the project
	@$(setup_env) \
	docker-compose down

dev-%: ## Open a terminal in the chosen service
	@$(setup_env) \
	docker-compose exec -it $* bash

clean: ## Clean up generated files
	@echo "Cleaning up..."
