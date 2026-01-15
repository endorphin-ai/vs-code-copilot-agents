#!/bin/bash
# Install script for project dependencies

set -e

echo "🚀 Starting installation..."

# Function to install Poetry
install_poetry() {
    echo "📦 Poetry not found. Installing Poetry..."
    
    # Try pip install first (more reliable in CI environments)
    if command -v pip3 &> /dev/null; then
        echo "   Using pip3 to install Poetry..."
        pip3 install poetry
    elif command -v pip &> /dev/null; then
        echo "   Using pip to install Poetry..."
        pip install poetry
    else
        # Fallback to official installer
        echo "   Using official installer..."
        if curl -sSL https://install.python-poetry.org | python3 -; then
            export PATH="$HOME/.local/bin:$PATH"
        else
            echo "❌ Failed to install Poetry. Please install it manually."
            exit 1
        fi
    fi
}

# Check if Poetry is installed
if ! command -v poetry &> /dev/null; then
    install_poetry
    
    # Verify installation
    if ! command -v poetry &> /dev/null; then
        echo "❌ Poetry installation failed. Please install it manually."
        echo "   Visit: https://python-poetry.org/docs/#installation"
        exit 1
    fi
    
    echo "✅ Poetry installed successfully!"
else
    echo "✅ Poetry is already installed."
fi

# Display Poetry version
echo "📋 Poetry version: $(poetry --version)"

# Navigate to project root (assuming script is in .copilot_utils/scripts/)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
cd "$PROJECT_ROOT"

echo "📁 Project root: $PROJECT_ROOT"

# Check if pyproject.toml exists, if not create it
if [ ! -f "pyproject.toml" ]; then
    echo "📝 Creating pyproject.toml..."
    poetry init --no-interaction --name "github-copilot-test" --description "A test project for GitHub Copilot" --author "Developer" --python "^3.9"
fi

# Update/create lock file (use --no-update to keep existing versions, or full lock if no lock file)
echo "🔒 Updating lock file..."
if [ -f "poetry.lock" ]; then
    poetry lock --no-update 2>/dev/null || poetry lock
else
    poetry lock
fi

# Install dependencies (--no-root since we're not a package)
echo "📦 Installing dependencies..."
poetry install --no-root

echo "🎉 Installation complete!"
echo ""
echo "To run the Python script, use:"
echo "  poetry run python python.py"
