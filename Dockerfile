FROM nginx:alpine

COPY . /usr/share/nginx/html/

WORKDIR /usr/share/nginx/html/
ENTRYPOINT /usr/share/nginx/html/docker_init.sh
