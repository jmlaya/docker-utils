FROM ubuntu
MAINTAINER José Laya <jmlaya@gmail.com>
# based on https://github.com/zolweb/docker-mailcatcher/blob/master/Dockerfile

RUN apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -q -y \
    ruby            \
    ruby-dev        \
    libsqlite3-dev  \
    build-essential \
  && gem install --no-ri --no-rdoc mailcatcher -v 0.5.12 \
  && apt-get remove -y build-essential \
  && apt-get autoremove -y \
  && apt-get clean \
  && apt-get clean all \
  && rm -rf /var/lib/apt/lists/*

EXPOSE 1080 1025

ENTRYPOINT ["mailcatcher", "--smtp-ip=0.0.0.0", "--http-ip=0.0.0.0", "--foreground"]
