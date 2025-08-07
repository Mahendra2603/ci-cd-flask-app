#!/bin/bash
echo "Rolling Back..."
docker stop flask-container
docker rm flask-container
docker run -d --name flask-container -p 5000:5000 flask-app:previous
