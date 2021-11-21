FROM node:13-alpine

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
WORKDIR /home/node/app

RUN npm install --prefix /home/node/app -g @bitwarden/cli

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

ENTRYPOINT [ "/home/node/app/bin/bw" ]
