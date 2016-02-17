FROM jmlaya/utils:phpcli

MAINTAINER "Jose Laya" <jmlaya@gmail.com>

WORKDIR /tmp

RUN apt-get update -y && \
    apt-get install -y \
    php5-mcrypt \
    php5-mongo \
    php5-mssql \
    php5-mysqlnd \
    php5-pgsql \
    php5-redis \
    php5-sqlite \
    php5-gd

RUN mkdir -p /data/sites
VOLUME ["/data"]
WORKDIR /data/sites

ENTRYPOINT ["php", "artisan"]
CMD ["--help"]
