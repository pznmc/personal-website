# Configuring & running nginx
FROM nginx:latest
COPY ./public/ /var/www/znamiec.me/html
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./nginx/znamiec.me.conf /etc/nginx/conf.d/default.conf
COPY ./nginx/znamiec.me.conf /etc/nginx/sites-available/znamiec.me.conf

RUN chmod -R 755 /var/www
RUN mkdir /etc/nginx/sites-enabled
RUN ln -s /etc/nginx/sites-available/znamiec.me.conf /etc/nginx/sites-enabled/