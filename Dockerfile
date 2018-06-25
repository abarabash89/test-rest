FROM node

WORKDIR /app
ADD . /app

EXPOSE 80

RUN npm install
CMD ["node", "index.js"]
