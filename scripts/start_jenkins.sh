#!/bin/bash
set -e
echo "🚀 Starting Jenkins server..."
docker compose up -d --build
echo "✅ Jenkins should be available at: http://localhost:8090"
