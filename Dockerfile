FROM alpine:latest

MAINTAINER lakshmi<m.lakshmikar23@gmail.com>

WORKDIR /usr/apps/express-sample/

RUN apt-get  -y update

RUN apt-get install -y nodejs

RUN apt-get install -y npm

RUN npm install -g http-server

ADD ./usr/apps/express-sample/

ADD app.js /usr/apps/express-sample/app.js

CMD ["http-server","-s"]
