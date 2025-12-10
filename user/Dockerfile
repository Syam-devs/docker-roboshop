FROM node:24-alpine3.21 AS build
WORKDIR /opt/server
COPY package.json .
COPY *.js .
RUN npm install 




FROM node:24-alpine3.21
WORKDIR /opt/server
ENV MONGO=true \ 
    REDIS_URL="redis://redis:6379" \
    MONGO_URL="mongodb://mongodb:27017/users"
COPY --from=build /opt/server /opt/server
RUN addgroup -S roboshop && adduser -S roboshop -G roboshop
USER roboshop
CMD ["node", "server.js"]



# FROM node:20.0
# WORKDIR /opt/server
# COPY package.json .
# COPY *.js .
# RUN npm install 
# ENV MONGO=true \ 
#     REDIS_URL="redis://redis:6379" \
#     MONGO_URL="mongodb://mongodb:27017/users"
# CMD ["node", "server.js"]
