# Stage 1: Build
FROM node:18-bullseye AS build

WORKDIR /app

# Copy only package.json and package-lock.json first
COPY app/frontend/package*.json ./

# Install dependencies (including react-scripts)
RUN npm install

# Copy source code
COPY app/frontend ./

# Build React app
RUN npm run build

# Stage 2: Production
FROM nginx:stable

COPY --from=build /app/build /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
