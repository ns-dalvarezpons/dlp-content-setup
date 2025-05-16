# Makefile

# Phony targets
.PHONY: help build clean

# Default target
help: ## Show this help message
	@echo "Available commands:"
	@awk 'BEGIN {FS = ":.*##"} /^[a-zA-Z_-]+:.*##/ {printf "  %-10s - %s\n", $$1, $$2}' $(MAKEFILE_LIST)

build: ## Build the project
	@echo "Building the project..."
	@cp -rf ~/.ssh ./config/
	docker-compose build --progress=plain --no-cache
	@rm -rf ./config .ssh

clean: ## Clean up generated files
	@echo "Cleaning up..."
