# Specify the base image
FROM node:21-alpine

# Copy your application code to the container
COPY ./ /app/

# Set the working directory
WORKDIR /app

# Build your application
RUN npm install

CMD ["node", "index.js"]
