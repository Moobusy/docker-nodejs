# 自定义服务

FROM node:12.13.1

MAINTAINER moobusy <75467234@qq.com>

ENV ZIP_PATH=''

WORKDIR /data/workdir

RUN yum install unzip  wget curl -y

# 下载程序
RUN curl ${ZIP_PATH} -o file.zip
RUN rm file.zip -y

ENTRYPOINT npm start