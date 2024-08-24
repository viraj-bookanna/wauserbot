FROM node:20-alpine
WORKDIR /usr/src/app
COPY . .
RUN npm install
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i google-chrome-stable_current_amd64.deb
RUN apt --fix-broken install
RUN apt install chromium-chromedriver
CMD ["node", "main.js"]
