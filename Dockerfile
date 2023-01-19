FROM node:16-alpine

ARG NODE_ENV=production
ARG NEXT_PUBLIC_CONTENT_URL="https://strapi.allesimrudel.de/"
ARG NEXT_PUBLIC_BACKEND_URL="https://backend.allesimrudel.de/"

ENV NODE_ENV=${NODE_ENV}
ENV NEXT_PUBLIC_CONTENT_URL=${NEXT_PUBLIC_CONTENT_URL}
ENV NEXT_PUBLIC_BACKEND_URL=${NEXT_PUBLIC_BACKEND_URL}

WORKDIR /opt/app

COPY ./app /opt/app

RUN npm install --production
RUN npm run build

EXPOSE 3000

CMD ["npm", "run", "start"]
