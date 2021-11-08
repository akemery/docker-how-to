## Clone github repo

```
git clone https://github.com/akemery/docker-how-to.git

cd docker-how-to

``` 


## Pull image

```
sudo docker pull akemery/dampserver:latest 
```

## Build and push images the current image

```
sudo docker build -t akemery/dampserver:latest .

```

## Run the current image

```
sudo docker run -p 8080:80 -it akemery/dampserver

```

Open a browser et visit http://localhost:8080

# Try it yourself

## Create account and repository

Go to https://hub.docker.com/ and create a new account if you don't have one yet.
After that you can create a new repository.

## Install Docker 

If you dont have docker install on your computer, follow the steps defined here
for ubuntu https://docs.docker.com/engine/install/ubuntu/

## build docker image

Don't forget to create a Dockerfile inside current directory.


```
sudo docker build -t <yourdockerid/yourrepositoryname> .
sudo docker login
sudo docker push <yourdockerid/yourrepositoryname> 
```

## Run your image with port forwading

```
sudo docker run -p 8080:80 -it <yourdockerid/yourrepositoryname>
```

Open a browser et visit http://localhost:8080

## Send the local image to hub.docker.com

```
sudo docker login
sudo docker push <yourdockerid/yourrepositoryname>:latest
```
