# Take container IP of postgres
docker inspect pg-container

# Build the image 
docker build -t python-pg-script .

#execute python container
docker run --name python-test python-pg-script