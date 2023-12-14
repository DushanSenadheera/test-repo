# Specify the base image
FROM node:21-alpine

# Copy your application code to the container
COPY ./ /app/

# Set the working directory
WORKDIR /app

# Build your application
RUN npm install

#build the docker image
RUN docker build -t node-app .

#run the docker image
RUN docker run -p 3000:3000 node-app

#push the docker image to docker hub
RUN docker push node-app



