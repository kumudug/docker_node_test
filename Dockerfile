# user the latest official node image
FROM node 

# setting working directory. All subsequent commands will run here
WORKDIR /app 

# copy this root folder contents to app folder in container. 
# also we can do . ./ as the WORKDIR is already set
COPY . /app 

# run npm install in WORKDIR
RUN npm install 

# Expose port 80 to outside. 
# This is only for documentation you still need to specify this port when running the container
EXPOSE 80 

# When an image is started run `node server.js`
CMD ["node", "server.js"] 