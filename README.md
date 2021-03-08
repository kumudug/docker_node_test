# Test docker using the official node image

* Dockerfile creates our own custom image based on official node image
* Build a custom image based on our Docker file
   - `docker build .`
   - `docker build . -t nodetest:first` - To give a repository and a tag
   - This will create an image and give you the image id
   - `Successfully built 86f519213eec`
* Run a container based on that image
   - `docker run -p 3000:80 86f519213eec`
   - `docker run -p 3000:80 repo:tag`
   - This will start that container and expose external port 3000 with the container port 80
   - `localhost:3000` 
* To stop this
   - `docker ps` - This will show you the running containers. Find the name 
   - `docker stop [name]`
