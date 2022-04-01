ARG  NODE_TAG=lts-alpine3.15
FROM node:$NODE_TAG

LABEL "about"="This a container for a hello world node app"

RUN mkdir /home/nacho
ENV workdirectory /home/nacho

VOLUME $workdirectory
WORKDIR $workdirectory
COPY package.json .

RUN npm install

COPY index.js .

EXPOSE 3000

CMD ["node", "index.js"]