FROM node:alpine

ENV API_KEY ${API_KEY}
ENV PORT ${PORT}

WORKDIR /usr/app

COPY package.json .
COPY package-lock.json .

npm i

COPY . .

EXPOSE ${PORT}

CMD ["npm", "start"]


