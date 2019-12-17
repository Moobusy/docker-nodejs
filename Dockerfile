# 自定义服务

FROM node:12.13.1

MAINTAINER moobusy <75467234@qq.com>

ENV ZIP_PATH=''
ENV ENTRYPOINT='npm start'

WORKDIR /data/workdir

RUN yum install unzip  wget curl -y

ENTRYPOINT curl ${ZIP_PATH} -o file.zip && unzip file.zip && ${ENTRYPOINT}