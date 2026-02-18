#!/bin/bash
# HTML to PPTX Studio - Easy Startup Script

echo "🎨 HTML to PPTX Studio"
echo "====================="
echo ""

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 is not installed"
    echo "Please install Python 3.8 or higher from python.org"
    exit 1
fi

echo "✅ Python found: $(python3 --version)"
echo ""

# Check if we're in the right directory
if [ ! -f "backend/app.py" ]; then
    echo "❌ Please run this script from the html-to-pptx-studio directory"
    exit 1
fi

# Install dependencies
echo "📦 Installing dependencies..."
cd backend
pip install -r requirements.txt -q

# Install Playwright browsers
echo "🌐 Installing Playwright browsers (one-time setup)..."
playwright install chromium

echo ""
echo "✅ Setup complete!"
echo ""
echo "🚀 Starting backend server..."
python3 app.py &
BACKEND_PID=$!

echo ""
echo "⏳ Waiting for server to start..."
sleep 3

echo ""
echo "🎉 App is ready!"
echo ""
echo "📡 Backend: http://localhost:5000"
echo "🌐 Frontend: Open frontend/index.html in your browser"
echo ""
echo "Press Ctrl+C to stop the server"
echo ""

# Wait for Ctrl+C
wait $BACKEND_PID