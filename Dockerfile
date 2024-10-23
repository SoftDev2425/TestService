FROM node:20-alpine

WORKDIR /app

COPY package*.json ./

COPY ./dist ./

RUN npm ci --omit=dev

RUN npx prisma generate 

CMD ["node", "index.js"]