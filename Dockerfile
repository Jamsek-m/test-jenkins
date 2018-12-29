FROM node:10.13.0-alpine

RUN mkdir /app

WORKDIR /app

COPY ./index.js /app

CMD ["node", "index.js"]

