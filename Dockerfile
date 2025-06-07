FROM ubuntu:latest

MAINTAINER charlash555@gmail.com

RUN apt-get update && apt-get install -y nginx \
    zip \
    unzip \
    wget

WORKDIR /var/www/html/

RUN wget -O travelista-master.zip https://codeload.github.com/technext/travelista/zip/refs/heads/master
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip

CMD ["nginx", "-D", "FOREGROUND"]

EXPOSE 80