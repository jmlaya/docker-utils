FROM debian:jessie

MAINTAINER "Jose Laya" <jmlaya@gmail.com>

WORKDIR /tmp

# Install Nginx
RUN apt-get update -y && \
    apt-get install -y nginx

# Apply Nginx configuration
COPY config/ /opt/etc/nginx/
RUN rm /etc/nginx/sites-enabled/default

# Nginx startup script
ADD nginx-start.sh /opt/bin/nginx-start.sh
RUN chmod u=rwx /opt/bin/nginx-start.sh

RUN mkdir -p /data/sites
VOLUME ["/sites"]

# PORTS
EXPOSE 80
EXPOSE 443

WORKDIR /opt/bin
ENTRYPOINT ["/opt/bin/nginx-start.sh"]
