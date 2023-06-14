FROM node:14

WORKDIR /app

COPY package.json .

RUN npm i

COPY . .

EXPOSE 80

CMD [ "node" ,"server.js" ]

