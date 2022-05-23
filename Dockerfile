FROM node:10
ENV SECRET_WORD "test"
EXPOSE 3000
WORKDIR /usr/src/app
COPY ["package.json", "./"]
RUN npm install
COPY . .
CMD ["npm", "start"]