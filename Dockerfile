FROM node

ENV NODE_ENV production

COPY src /app/src/
COPY bin /app/bin/
COPY package.json /app/
COPY node_modules /app/node_modules

WORKDIR /app

RUN npm install --production
CMD ["npm", "start"]