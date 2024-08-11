# Base image
FROM node:alpine as build

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the React app
RUN npm run build



# Expose port 80
EXPOSE 3000

CMD [ "npm", "start" ]