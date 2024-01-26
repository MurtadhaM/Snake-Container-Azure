FROM node:12.18.3-alpine3.12 
LABEL maintainer="Murtadha Marzouq"
RUN apk add --no-cache tini && \
    mkdir -p /usr/src/app && \
    chown -R node:node /usr/src/app && \
    npm install 

WORKDIR /usr/src/app
COPY . /usr/src/app
USER node
ENV NODE_ENV=production \
    PORT=8080
#RUN npm i
EXPOSE 8080
CMD ["/bin/sh", "-c", "npm i && node server.js"]
ENTRYPOINT ["/sbin/tini", "--"] 

## Build the image
# podman build . --tag docker.io/mmarzouq/snake-node-app:latest

## Push the image
# podman push docker.io/mmarzouq/snake-node-app:latest## Run the container

## run the container
# podman run -it -p 8080:8080 docker.io/mmarzouq/snake-node-app:latest  

## Pass the environment variable
#podman run -it -p 8080:3000 -e PORT=3000 docker.io/mmarzouq/snake-node-app:latest


