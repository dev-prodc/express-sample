FROM node:9-slim

MAINTAINER lakshmi<m.lakshmikar23@gmail.com>

WORKDIR /app

COPY package.json ./app

RUN apt-get  -y update

RUN apt-get install -y npm

COPY ./app

CMD["npm","start"]
