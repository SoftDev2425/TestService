FROM node:20-alpine

WORKDIR /app

COPY package*.json ./

RUN npm ci --omit=dev

COPY ./prisma ./prisma

RUN npx prisma generate 

COPY ./dist ./

CMD ["node", "index.js"]
