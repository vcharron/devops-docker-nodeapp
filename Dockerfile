FROM node:10

RUN mkdir -p /usr/src/lab2
WORKDIR /usr/src/lab2

ENV NODE_ENV prod

copy package.json .

RUN npm install

COPY . .

EXPOSE 8080

#TODO script

ENTRYPOINT ["entry.sh"]

CMD ["start"]