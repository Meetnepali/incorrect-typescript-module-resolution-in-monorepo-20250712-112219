FROM node:18-alpine
WORKDIR /workspace
COPY . .
RUN npm install -g npm@9
RUN npm ci
