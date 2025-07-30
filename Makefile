# API Portal Makefile
# Cross-platform build commands

.PHONY: build install clean rebuild help

help:
	@echo "Available commands:"
	@echo "  make build    - Build the portal (frontend + copy to lambda)"
	@echo "  make install  - Install all dependencies"
	@echo "  make clean    - Clean build artifacts"
	@echo "  make rebuild  - Clean and build"

build:
	@echo "Building API Portal..."
	node run build

install:
	@echo "Installing dependencies..."
	node run install

clean:
	@echo "Cleaning build artifacts..."
	rm -rf dev-portal/build
	rm -rf lambdas/static-asset-uploader/build

rebuild: clean build