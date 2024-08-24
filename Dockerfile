FROM virajccx/wauserbot:latest
WORKDIR /usr/src/app
COPY . .
RUN npm install
CMD ["node", "main.js"]
