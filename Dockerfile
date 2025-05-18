FROM nginx:alpine

COPY /config/nginx.conf /etc/nginx/

COPY /config/conf.d /etc/nginx/conf.d/

# COPY html /usr/share/nginx/html

# COPY assets /usr/share/nginx/assets

# COPY /build/client /usr/share/nginx/html

RUN rm /etc/nginx/conf.d/default.conf

RUN apt-get update && echo "root:$(openssl passwd -apr1 'Arka@1998')" > /etc/nginx/.htpasswd