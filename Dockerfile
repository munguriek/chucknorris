# Base Image
FROM node:16-alpine 

# Set up a working directory in your container
WORKDIR /app

# Copy the packages.json to the /app directory
COPY package.json ./package.json
COPY package-lock.json ./package-lock.json

# Install the dependencis
RUN npm install 

# Copy the rest of the project files into the image
COPY . .

# Expose application port
EXPOSE 3000

# Start the application
CMD npm start