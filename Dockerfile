FROM node:19.5.0-alpine

WORKDIR /usr/app

COPY ./package.json ./
RUN npm install
COPY ./ ./

CMD [ "npm", "start" ]

# docker run -p 8080:8080 dialloabdourahman/simpleweb