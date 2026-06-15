# install
curl - fsSL https://get.docker.com | sh
sudo usermod -aG docker $USER #then logout/login

# verify
docker --version 
docker info

# run containers
docker run hello-world #quick test
dock run -d -p 8080:80 --name webserver ngingx #run nginx container
# -d   = detached (background)
# -p   = port mapping host:container
# --name = give it a friendly name

# inspect
docker ps #list running containers
docker ps -a #list all containers
docker images #local images
docker logs webserver #view logs of the webserver container
docker exec -it webserver bash #open a shell inside the container

# lifecycle
docker stop webserver #stop the container
docker start webserver #start it again
docker restart webserver #restart it
docker rm webserver #remove the container
docker rm -f webserver #force remove (stop if running)
docker rmi nginx #remove the image (only if no container is using it)

# cleanup
docker container prune #remove all stopped containers
docker inmage prune #remove dangling images (untagged)
docker system prune #full cleanup - be carefull