# Makefile for augint-project
# Troubleshooting and ecosystem management commands

.PHONY: help install dev-install test lint format clean status health deps sync issues

# Docker Compose now uses COMPOSE_PROJECT_NAME from .env file

# Default target - show help
help:
	@echo "Available commands:"
	@echo "  make install      Install project dependencies"
	@echo "  make dev-install  Install with all development dependencies"
	@echo "  make test         Run tests for troubleshooting scripts"
	@echo "  make lint         Run ruff linting with fixes"
	@echo "  make format       Format code with ruff"
	@echo "  make clean        Remove build artifacts and caches"
	@echo ""
	@echo "Ecosystem Management:"
	@echo "  make status       Show ecosystem status across all repos"
	@echo "  make health       Quick dependency health check" 
	@echo "  make deps         Analyze dependencies and show graph"
	@echo "  make sync         Sync all Trinity repositories"
	@echo "  make issues       Show unified issue dashboard"
	@echo ""
	@echo "Docker:"
	@echo "  make claude       Launch Claude Code in Docker"
	@echo "  make join-claude  Join Claude container with bash"
	@echo "  make ports        Show ports for running containers"
	@echo "  make docker-build Build Docker images"
	@echo "  make docker-stop  Stop Docker containers"
	@echo "  make docker-clean Clean up Docker resources"

# Installation targets
install:
	poetry install

dev-install:
	poetry install --with dev,security,compliance

# Testing and code quality
test:
	pytest -m "not slow and not ci_only"

lint:
	ruff check --fix

format:
	ruff format .

# Cleanup
clean:
	find . -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name ".pytest_cache" -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name ".ruff_cache" -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name ".mypy_cache" -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name "*.egg-info" -exec rm -rf {} + 2>/dev/null || true
	rm -rf dist/ build/ htmlcov/ .coverage coverage.xml coverage.json

# Docker targets
claude:
	@echo "Launching Claude Code..."
	@docker-compose up -d dev
	@powershell -Command "Start-Sleep -Seconds 2"
	@docker-compose exec -it dev claude

join-claude:
	@docker-compose exec -it dev /bin/bash

docker-build:
	docker-compose build

docker-stop:
	docker-compose down

docker-clean:
	docker-compose down -v --remove-orphans
	docker system prune -f

# Ecosystem management commands
status:
	python scripts/ecosystem-status.py status --verbose

health:
	python scripts/dependency-tracker.py check

deps:
	python scripts/dependency-tracker.py analyze
	@echo ""
	python scripts/dependency-tracker.py graph

sync:
	python scripts/ecosystem-status.py sync

issues:
	python scripts/cross-repo-issue.py dashboard
