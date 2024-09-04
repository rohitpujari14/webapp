# Stage 1: Build the Node.js application
FROM node:16 AS build

WORKDIR /app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy the application source code
COPY . .

# Expose the port
EXPOSE 3000

# Run the application
CMD ["node", "index.js"]

# Stage 2: Build an Nginx image
FROM nginx:alpine

# Copy the built app from the first stage
COPY --from=build /app /usr/share/nginx/html

# Expose the port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
