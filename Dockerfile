FROM node:20-alpine

WORKDIR /app

COPY package*.json ./

COPY ./dist ./

RUN npm ci --omit=dev

RUN echo "Hello World from Dockerfile"

CMD ["node", "index.js"]