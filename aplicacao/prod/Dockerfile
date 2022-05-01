FROM nginx:1.21.6

RUN apt-get update -qq && apt-get -y install apache2-utils

WORKDIR /aplicacao

RUN mkdir log

COPY public public

COPY ./prod/nginx.conf /tmp/nginx.conf

RUN envsubst /aplicacao < /tmp/nginx.conf > /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"] 