FROM node:6
MAINTAINER Sunny Kim <cc_ksh@naver.com>

COPY package.json /src/package.json
RUN cd /src; npm install
COPY . /src

EXPOSE 3000
WORKDIR /src

CMD node app.js
