FROM node:latest

WORKDIR ../jenkins

COPY . .

RUN npm i && npm run dev
RUN npm i -g serve

CMD ["serve", "-s", "build"]
