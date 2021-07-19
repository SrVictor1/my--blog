
FROM node:14.17.3

WORKDIR /front_end

COPY ./package*.json ./yarn.lock ./

RUN yarn install

COPY ./ ./

EXPOSE 3000

CMD ["yarn", "dev"]