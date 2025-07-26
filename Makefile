# Ensures that commands are not echoed to the console
.PHONY: all install test lint format clean

# Default Python interpreter
PYTHON = python

# Install dependencies
install:
	@echo "Installing dependencies..."
	$(PYTHON) -m pip install -r requirements.txt

# Run tests
test:
	@echo "Running tests..."
	$(PYTHON) -m pytest

# Lint code
lint:
	@echo "Linting code..."
	$(PYTHON) -m pylint my_app/

# Format code with black
format:
	@echo "Formatting code..."
	$(PYTHON) -m black my_app/ tests/

# Clean up build artifacts
clean:
	@echo "Cleaning up..."
	find . -type f -name "*.pyc" -delete
	find . -type d -name "__pycache__" -delete

# Run all common tasks
all: install test lint format
