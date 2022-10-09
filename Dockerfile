FROM node:14-alpine3.10 as ts-compiler

WORKDIR /usr/app
COPY package*.json ./
COPY tsconfig*.json ./
RUN npm ci --loglevel warn
COPY . ./
RUN npm run lint
RUN npm run prettier-format
RUN npm run build

CMD ["npm", "start"]