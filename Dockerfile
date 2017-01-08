# Create image from nodejs base image
FROM node:6

RUN mkdir -p /usr/src/app 

# Change workind directory to the cloned repo
WORKDIR /usr/src/app

# Install all the dependencies
COPY package.json /usr/src/app
RUN npm install

# Bundle app source
COPY . /usr/src/app

# Expose port
EXPOSE 8000

# Run the application
CMD ["npm", "start"]
