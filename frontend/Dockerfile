FROM nginx:1.29
RUN rm -rf /etc/nginx/nginx.conf
RUN rm -rf /etc/nginx/conf.d/default.conf
RUN rm -rf /usr/share/nginx/html/index.html
COPY nginx.conf /etc/nginx/nginx.conf
WORKDIR /usr/share/nginx/html/
COPY data/ .
COPY *.html .


