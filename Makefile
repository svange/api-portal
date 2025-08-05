# Makefile for augint-project
# Troubleshooting and ecosystem management commands

.PHONY: help install dev-install test lint format clean status health deps sync issues

# Docker Compose now uses COMPOSE_PROJECT_NAME from .env file

# Default target - show help
help:
	@echo "Docker:"
	@echo "  make claude       Launch Claude Code in Docker"
	@echo "  make join-claude  Join Claude container with bash"
	@echo "  make ports        Show ports for running containers"
	@echo "  make docker-build Build Docker images"
	@echo "  make docker-stop  Stop Docker containers"
	@echo "  make docker-clean Clean up Docker resources"

# Cleanup
clean:
	find . -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name ".pytest_cache" -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name ".ruff_cache" -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name ".mypy_cache" -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name "*.egg-info" -exec rm -rf {} + 2>/dev/null || true
	rm -rf dist/ build/ htmlcov/ .coverage coverage.xml coverage.json

# Docker targets
# Convenience target to continue a Claude session
claude:
	@echo "Launching Claude Code..."
	@docker-compose up -d dev
	@echo "Waiting for container to be ready..."
	@powershell -Command "Start-Sleep -Seconds 2"
	@docker-compose exec -it dev claude $(ARGS)


claude-continue:
	@$(MAKE) claude ARGS=-c

join-claude:
	@echo "Joining Claude container with bash shell..."
	@docker-compose exec -it dev /bin/bash

# Show ports for running containers
ports:
	@docker-compose ps

docker-build:
	@echo "Building Docker images..."
	docker-compose build

docker-stop:
	@echo "Stopping Docker containers..."
	@docker-compose down

docker-clean:
	@echo "Cleaning up Docker resources..."
	@docker-compose down -v --remove-orphans
	docker system prune -f
	rm -f pytest.log test-report.html

