FROM node:22-alpine3.21

# Use non-root user for better security
USER node
WORKDIR /home/node

# Copy package.json files first for better caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy server code
COPY server.js ./

# Set the entrypoint to run the server
ENTRYPOINT ["node"]
CMD ["server.js"]