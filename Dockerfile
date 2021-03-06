FROM node:8.4

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app
RUN npm install
RUN npm run compile

EXPOSE 3000

CMD [ "npm", "start"]
