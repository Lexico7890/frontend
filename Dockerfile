# -------- STAGE 1: Build the React App --------
FROM node:18-alpine AS builder

WORKDIR /app

# Install dependencies
COPY package.json package-lock.json ./
RUN pnpm install

# Copy rest of the project
COPY . .

# Build the app
RUN pnpm run build
