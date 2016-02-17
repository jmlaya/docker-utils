FROM debian:jessie

MAINTAINER "Jose Laya" <jmlaya@gmail.com>

RUN apt-get update -y && \
    apt-get install php5-cli -y

ENTRYPOINT ["php"]
CMD ["--help"]
