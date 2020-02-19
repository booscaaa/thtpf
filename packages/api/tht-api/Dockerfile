FROM node:latest

WORKDIR /var/www

ADD app app
ADD config config
ADD database database
ADD start start
ADD .env .
ADD ace .
ADD package.json .
ADD server.js .

RUN npm i
# RUN node ace migration:run --force

RUN sed -i -e "s/HOST=.*/HOST=0.0.0.0/g" .env

RUN cat .env

CMD [ "npm", "start" ]

# CMD ["/init.sh"]