FROM node:6

RUN npm install -g yarn
COPY package.json .
RUN yarn install
RUN ls node_modules