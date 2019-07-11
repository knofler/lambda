FROM node:latest

# COPY . lambda/
COPY ./src/ lambda/src/
COPY ./package.json lambda/package.json
# COPY ./yarn.lock lambda/yarn.lock
COPY ./serverless.yml lambda/serverless.yml 


WORKDIR lambda/

# ENV NODE_ENV=development API_URL_Docker=test


RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get update && apt-get install -y nodejs

RUN npm install -g serverless
RUN npm install -g serverless-offline
RUN npm install -g yarn

RUN yarn

EXPOSE 3000

CMD ["sls", "offline"]