FROM node   

WORKDIR /usr/flakron-next-app

COPY package*.json /usr/flakron-next-app
 
RUN npm install

COPY . /usr/flakron-next-app



RUN npm run build

COPY . /usr/flakron-next-app

EXPOSE 3000     

ENTRYPOINT ["npm", "run", "start"]