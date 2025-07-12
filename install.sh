#!/bin/sh
set -e

printf "[INFO] Installing dependencies and building Docker image...\n"
docker build -t ts-monorepo .

printf "[INFO] Dependencies installed and Docker image built successfully.\n"
