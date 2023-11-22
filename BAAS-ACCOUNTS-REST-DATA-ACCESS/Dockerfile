FROM node:16
WORKDIR /baasaccountsrestdataaccess

COPY package.json /baasaccountsrestdataaccess
COPY .npmrc /baasaccountsrestdataaccess

COPY config.js .

EXPOSE 6001

RUN apt-get update
RUN apt-get install -y openssl

RUN npm install

COPY . /baasaccountsrestdataaccess

RUN npm run schema-generate

CMD npm run local
