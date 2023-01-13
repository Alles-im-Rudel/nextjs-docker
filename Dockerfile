FROM node:16-alpine

ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}

WORKDIR /opt/app

COPY ./app /opt/app

RUN npm install --production
RUN npm run build

EXPOSE 3000

CMD ["npm", "run", "start"]
