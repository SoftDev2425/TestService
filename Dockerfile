FROM node:20-alpine

WORKDIR /app

COPY package*.json ./

COPY ./dist ./

RUN npm ci --production

CMD ["node", "index.js"]