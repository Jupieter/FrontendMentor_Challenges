# Use the official Node.js Docker base
FROM node:18

# create new user
RUN addgroup app && adduser --system -ingroup app app

# Create a working library in the container
WORKDIR /app
# Installing dependencies
COPY package*.json ./

# install the necessary packages
RUN npm install

# Projekt fájlok másolása a konténerbe
COPY . .
# Set rights
RUN chown -R app:app /app
RUN chown 755 /app

# change user
USER app

# specify the port of the container
EXPOSE 8080

# Run the application
CMD ["npm", "run", "serve"]
