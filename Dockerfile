FROM 845091770108.dkr.ecr.ap-south-1.amazonaws.com/baseimages:latest

WORKDIR /nodejs-docker-aws-ecs

COPY package.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "node", "app.js" ]
