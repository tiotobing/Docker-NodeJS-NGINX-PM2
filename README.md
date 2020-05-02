# Docker-NodeJS-NGINX-PM2
Dockerize simple apps using NodeJS, NGINX, and PM2  process manager for production Node.js applications.

## Installation
   - clone project
   - cd Docker-NodeJS-NGINX-PM2
   - edit Dockerfile, if you have PM2 credential add to Dockerfile but feel free to remove PM2 cred if not desired
   - on nginx/defauld.conf, add your domain/IP addr

## Usage
```bash
docker-compose up -d --build
```

## Useful Commands
```bash
$ docker exec -it <container-id> pm2 monit

$ docker exec -it <container-id> pm2 list

$ docker exec -it <container-id> pm2 show

$ docker exec -it <container-id> pm2 reload all 	 
```
