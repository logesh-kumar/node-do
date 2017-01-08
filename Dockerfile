# Create image from nodejs base image
FROM node:6

# Clone the repo from github
RUN git clone https://github.com/gangachris/DO-nodejs

# Change workind directory to the cloned repo
WORKDIR /DO-nodejs

# Install all the dependencies
RUN npm install

# Expose port
EXPOSE 8000

# Run the application
CMD ["npm", "start"]
