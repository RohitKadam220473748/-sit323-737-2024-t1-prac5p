# it use Node.js version 16 as the base image.
FROM node:16
# Set the working directory inside the container to /usr/src/app.
WORKDIR /usr/src/app

# below line copy package.json and package-lock.json from the host to the container's working directory for dependency installation.
COPY package*json ./
# Run npm install to install Node.js dependencies based on the package files.
RUN npm install

# below line copy the application code file calculator.js from the host to the container's working directory.
COPY  calculator.js .
# below line expose port 3040 in the container, allowing external access to the application.
EXPOSE 3040 
# below line specify the default command to start the application with 'node calculator.js' when the container is launched.
CMD [ "node", "calculator.js" ]

