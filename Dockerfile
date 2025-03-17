FROM node:22-alpine3.21

# Set working directory
WORKDIR /app

# Copy package.json files first for better caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy server code
COPY server.js ./

# Use non-root user for better security (switch after files are copied/installed)
USER node

# Set the entrypoint to run the server
ENTRYPOINT ["node"]
CMD ["server.js"]