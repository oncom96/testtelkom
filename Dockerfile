FROM nginx:mainline-alpine

RUN mkdir -p /usr/share/nginx/html

COPY index.html /usr/share/nginx/html

CMD ["nginx"]

EXPOSE 80