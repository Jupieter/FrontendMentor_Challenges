# Use the official Node.js Docker base
FROM node:alpine

# create new user
    # RUN addgroup app && adduser --system -ingroup app app

# Create a working library in the container
WORKDIR /app
ENV PATH /app:$PATH

# Set CHOKIDAR_USEPOLLING=true to enable polling-based file watching
ENV CHOKIDAR_USEPOLLING = true

# Installing dependencies
COPY package*.json ./

# install the necessary packages
RUN npm install

# Copy project files to the container
# COPY . .
COPY . .

# Set rights
    # RUN chown -R app:app /app
    # RUN chmod 755 /app

# change user
    # USER app

# specify the port of the container
EXPOSE 8080

# Run the application 
CMD ["npm", "run", "serve"]


