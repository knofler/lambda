FROM node:latest

COPY . lambda/


WORKDIR lambda/

# ENV NODE_ENV=development API_URL_Docker=test


RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get update && apt-get install -y nodejs
RUN yarn
RUN npm install


EXPOSE 4500

ENTRYPOINT ["yarn", "run", "dev"]