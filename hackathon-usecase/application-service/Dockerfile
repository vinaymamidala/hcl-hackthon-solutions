# Use official Node image
FROM node:18-alpine

# Set working directory inside container
WORKDIR /app

# Copy package.json and package-lock.json first
COPY package*.json ./

# Install dependencies
RUN npm install --only=production

# Copy the rest of the source code
COPY . .

# Expose application port (change if needed)
EXPOSE 3000

# Start the application
CMD ["npm", "start"]

