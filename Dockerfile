FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy backend files
COPY package*.json ./
COPY server ./server

# Install dependencies
RUN npm install

# Copy client files
COPY client ./client

# Build React app
WORKDIR /app/client
RUN npm install && npm run build

# Expose port
EXPOSE 5000

# Start server
CMD ["node", "server/index.js"]