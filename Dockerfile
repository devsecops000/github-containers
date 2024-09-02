FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.vpmgk.mongodb.net
ENV MONGODB_USERNAME devsecops00
ENV MONGODB_PASSWORD Fjesc65fDIgBLtG9

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]