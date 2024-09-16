FROM quay.io/suhailtechinfo/suhail-v2

USER node

RUN git clone https://github.com/A-d-i-t-h-y-a-n/hermit-bot home/node/blue

WORKDIR /home/node/blue

RUN chmod -R 777 /home/node/blue/

RUN yarn install && yarn add http

COPY server.js .

COPY start.sh .

CMD ["bash","start.sh" ]

