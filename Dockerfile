FROM node:18.0.0-apline

RUN mkdir -p /usr/src/app
WORKDIT /usr/src/app

COPY . . 
ENV NODE_OPTIONS=--openssl-legacy-provider

ARG API_KEY
ENV TMDB_KEY=${API_KEY}

RUN npm install
RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]
