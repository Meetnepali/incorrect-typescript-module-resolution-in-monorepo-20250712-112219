#!/bin/sh
set -e

./install.sh

printf "[INFO] Running TypeScript compiler in API package...\n"
docker run --rm -v "$(pwd)":/workspace -w /workspace/packages/api ts-monorepo npx tsc
