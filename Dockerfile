FROM node

RUN mkdir /app
COPY package.json /app
COPY yarn.lock /app

WORKDIR /app
RUN yarn install

COPY . /app

RUN yarn test
RUN yarn build

CMD yarn start
EXPOSE 3000
