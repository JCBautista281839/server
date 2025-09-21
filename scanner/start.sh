#!/bin/bash
echo "🚀 Starting OMR Scanner Server..."
echo "📁 Current directory: $(pwd)"
echo "📋 Files in directory: $(ls -la)"
echo "🐍 Python version: $(python --version)"
echo "📦 Installing requirements..."
pip install -r requirements.txt
echo "🚀 Starting Flask app..."
python omr_web_circle_scanner.py
