FROM node:6.9.4
MAINTAINER Sunny Kim <cc_ksh@naver.com>

RUN mkdir -p /app
WORKDIR /app
ADD . /app

COPY package.json /app
RUN npm install

EXPOSE 3000 80
CMD ["npm", "start"]
