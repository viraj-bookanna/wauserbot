FROM node:20-alpine
WORKDIR /usr/src/app
COPY . .
RUN npm install
CMD ["node", "main.js"]
