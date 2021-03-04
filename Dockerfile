# user the latest official node image
FROM node 

# setting working directory. All subsequent commands will run here
WORKDIR /app 

# Instead of copying all source we first copy the package.json to take advantage of 
# Docker layer based caching. This way when we recreate new images from changed code 
# Docker uses the cached npm install result if the package.json didn't change
COPY package.json /app

# run npm install in WORKDIR
RUN npm install 

# copy this root folder contents to app folder in container. 
# also we can do . ./ as the WORKDIR is already set
COPY . /app 

# Expose port 80 to outside. 
# This is only for documentation you still need to specify this port when running the container
EXPOSE 80 

# When an image is started run `node server.js`
CMD ["node", "server.js"] 