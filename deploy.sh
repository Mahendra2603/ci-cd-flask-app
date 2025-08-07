#!/bin/bash
echo "Starting Deployment..."
docker build -t flask-app .
docker stop flask-container || true
docker rm flask-container || true
docker run -d --name flask-container -p 5000:5000 flask-app
echo "Deployment Complete!"
