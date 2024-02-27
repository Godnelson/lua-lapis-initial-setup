FROM ubuntu:latest

WORKDIR /app

COPY . ./

RUN apt -y update && apt -y upgrade

RUN apt -y install liblua5.4-*

RUN apt -y install lua5.4

RUN apt -y install luarocks

RUN apt -y install software-properties-common

RUN apt -y install libssl-dev

RUN wget -qO - https://openresty.org/package/pubkey.gpg | apt-key add -

RUN add-apt-repository -y "deb https://openresty.org/package/ubuntu $(lsb_release -sc) main"

RUN apt update

RUN apt -y install openresty

RUN luarocks install lapis

RUN lapis new
