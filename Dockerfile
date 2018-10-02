## Build container
FROM ubuntu 

RUN apt update && apt install -y git nodejs npm ruby-compass
RUN npm install -g npx
RUN git clone -b embedded --single-branch https://github.com/notalib/lyt.git
RUN cd lyt && npm install && npx cake app


## Webserver with LYT2
FROM nginx:1.15.3-alpine

COPY --from=0 /lyt/build /usr/share/nginx/html/embedded
