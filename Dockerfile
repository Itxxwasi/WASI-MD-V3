FROM node:lts-bullseye

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

WORKDIR /usr/wasimain/app

COPY package.json .

RUN npm install && npm install -g qrcode-terminal pm2

COPY . .

CMD ["npm", "start"]
#FROM node:lts-buster

#RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*
  
#WORKDIR /usr/wasimain/app

#COPY package.json .

#RUN npm install && npm install -g qrcode-terminal pm2

#COPY . .

#CMD ["npm", "start"]
