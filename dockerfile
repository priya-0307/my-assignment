# Stage 1: Build
FROM node:18-alpine AS build

WORKDIR /app

# Install build tools required for react-scripts
RUN apk add --no-cache python3 make g++

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy source code
COPY app/ ./

# Build React app
RUN npm run build

# Stage 2: Production - Nginx
FROM nginx:alpine

# Copy build output
COPY --from=build /app/build /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
