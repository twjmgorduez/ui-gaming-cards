# pull official base image
FROM node:10 as react-build

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# Install app dependencies
COPY package*.json ./
RUN yarn

# Build app
COPY . ./
RUN yarn build

# Start app
CMD ["yarn", "start"]