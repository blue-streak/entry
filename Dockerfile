FROM nginx:stable-alpine

RUN rm /etc/nginx/conf.d/default.conf
COPY .docker/nginx/sites/ /etc/nginx/conf.d

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]