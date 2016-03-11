FROM node:latest

MAINTAINER José Laya "jmlaya@gmail.com"

RUN npm install -g pm2@latest

VOLUME ["/app"]
WORKDIR /app
ENTRYPOINT ["pm2"]



EXPOSE 80
EXPOSE 443

EXPOSE 5000
EXPOSE 5001
