# 自定义服务

FROM node:12.13.1

MAINTAINER moobusy <75467234@qq.com>

ENV ZIP_PATH=''
ENV ENTRYPOINT='yarn start'
ENV GLOBAL_INSTALL=''

WORKDIR /data/workdir

RUN apt-get update
RUN apt-get install zip unzip wget curl git -y

RUN npm config set sass_binary_site=https://npm.taobao.org/mirrors/node-sass/
RUN npm config set phantomjs_cdnurl=https://npm.taobao.org/mirrors/phantomjs/
RUN npm config set electron_mirror=https://npm.taobao.org/mirrors/electron/
RUN npm config set registry=https://registry.npm.taobao.org
RUN npm i yarn -g
RUN npm config set user 0
RUN npm config set unsafe-perm true

ENTRYPOINT yarn && ${ENTRYPOINT}
