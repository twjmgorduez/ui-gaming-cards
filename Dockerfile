# pull official base image
FROM node:10 as react-build

# set working directory
WORKDIR /app

# Install app dependencies
COPY package*.json ./
RUN yarn

# Build app
COPY src/main ./src/main
RUN yarn build

# Start app
CMD ["yarn", "start"]