FROM nginx:1.29
RUN rm -rf /usr/share/nginx/html/*
WORKDIR /usr/share/nginx/html
COPY data/ .
COPY *.html .
COPY nginx.conf /etc/nginx/nginx.conf

