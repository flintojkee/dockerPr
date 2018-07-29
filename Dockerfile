
FROM node:8
COPY package.json ./
COPY dist ./dist
COPY config ./config
COPY controllers ./controllers
COPY models ./models
COPY server.js ./
RUN npm install
EXPOSE $PORT
CMD ["node", "server.js"]