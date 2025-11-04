# Use official Node.js LTS image
FROM node:18-bullseye

# Set working directory
WORKDIR /app

# Copy package files first (for caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the app
COPY . .

# Expose the app port
EXPOSE 3000

# Define the command to run your app
CMD ["node", "server.js"]
