FROM node:22-slim

WORKDIR /app

COPY package*.json ./
RUN npm ci --omit=dev

COPY index.js settings.json ./

CMD ["npm", "start"]