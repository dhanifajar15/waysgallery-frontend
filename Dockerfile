FROM node:14
WORKDIR /usr/app
COPY . .
RUN npm install
RUN npm run build
RUN npm install -g serve
EXPOSE 5000
CMD ["serve","-s","build"] 
