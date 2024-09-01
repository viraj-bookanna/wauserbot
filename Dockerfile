FROM node:16.20.2-alpine
RUN apk add --no-cache \
  chromium \
  ca-certificates
WORKDIR /app
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
  PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser
COPY . /app
RUN npm install
CMD ["node", "main.js"]
