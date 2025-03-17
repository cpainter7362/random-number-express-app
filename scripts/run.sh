#!/bin/sh
echo "Stopping any existing containers..."
docker stop numbers-api-c 2>/dev/null || true
docker rm numbers-api-c 2>/dev/null || true

echo "Starting new container..."
docker run --rm -d -p 3003:3003 --name numbers-api-c numbers-api:latest

echo "Container started! Access the API at http://localhost:3003/"