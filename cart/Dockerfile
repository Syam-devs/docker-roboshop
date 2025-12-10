FROM node:24-alpine3.21 AS build
WORKDIR /opt/server
COPY package.json .
COPY *.js .
RUN npm install 




FROM node:24-alpine3.21
WORKDIR /opt/server
ENV REDIS_HOST="redis" \ 
    CATALOGUE_HOST="catalogue" \
    CATALOGUE_PORT="8080"
COPY --from=build /opt/server /opt/server
RUN addgroup -S roboshop && adduser -S roboshop -G roboshop
USER roboshop
CMD ["node", "server.js"]

# FROM node:20.0
# WORKDIR /opt/server
# COPY package.json .
# COPY *.js .
# RUN npm install 
# ENV REDIS_HOST="redis" \ 
#     CATALOGUE_HOST="catalogue" \
#     CATALOGUE_PORT="8080"
# CMD ["node", "server.js"]
