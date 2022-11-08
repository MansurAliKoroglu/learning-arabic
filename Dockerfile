FROM node:16.16.0

WORKDIR /usr/src/app

COPY --chown=node:node package*.json ./

RUN npm ci && npm cache clean --force

COPY --chown=node:node . .

ENV NODE_ENV production

USER node

EXPOSE 8080

CMD [ "npm", "start" ]
