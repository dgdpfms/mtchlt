#Sample Dockerfile for NodeJS Apps

FROM node:12-alpine

ENV NODE_ENV=production

WORKDIR /Hgfoyw5647drHg

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .

EXPOSE 3000

CMD [ "node", "server.js" ]
