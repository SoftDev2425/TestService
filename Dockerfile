FROM node:20-alpine

WORKDIR /app

COPY package*.json ./
COPY prisma ./prisma

RUN npm ci --omit=dev

COPY ./dist ./

RUN npx prisma migrate deploy

RUN npx prisma generate 

CMD ["node", "src/index.js"]
