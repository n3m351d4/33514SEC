#!/bin/bash

# Security Visualizations Hub - Local Development Server
# This script starts a local HTTP server for development

echo "🔒 Starting Security Visualizations Hub..."
echo "📁 Working directory: $(pwd)"
echo ""

# Check if Python is available
if command -v python3 &> /dev/null; then
    echo "🐍 Using Python 3..."
    echo "🌐 Server will be available at: http://localhost:8000"
    echo "⏹️  Press Ctrl+C to stop the server"
    echo ""
    python3 -m http.server 8000
elif command -v python &> /dev/null; then
    echo "🐍 Using Python 2..."
    echo "🌐 Server will be available at: http://localhost:8000"
    echo "⏹️  Press Ctrl+C to stop the server"
    echo ""
    python -m SimpleHTTPServer 8000
else
    echo "❌ Python not found. Please install Python or use another method."
    echo ""
    echo "Alternative methods:"
    echo "  - Node.js: npx serve ."
    echo "  - PHP: php -S localhost:8000"
    echo "  - VS Code: Install Live Server extension"
    exit 1
fi
