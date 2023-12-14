# Specify the base image
FROM node:21-alpine

# Copy your application code to the container
COPY ./ /app/

# Set the working directory
WORKDIR /app

# Build your application
RUN npm install

CMD ["node", "index.js"]

#push to docker hub
RUN docker push -t dcsenadheera/test-app:1.0 .

#run the docker image
RUN docker run -p 3000:3000 dcsenadheera/test-app:1.0