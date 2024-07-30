# specify based image
FROM node:alpine

#set up working directory
WORKDIR "/app"

#set minimal build for node packages
COPY ./package.json ./

#install dependencies
RUN npm install

#set up file copy directory
COPY ./ ./

#start up command
CMD ["npm", "start"]