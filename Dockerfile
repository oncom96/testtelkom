FROM nginx:mainline-alpine

RUN mkdir -p /usr/share/nginx/html/

COPY index.html /usr/share/nginx/html/index.html

RUN chown nginx:nginx /usr/share/nginx/html/

EXPOSE 80
