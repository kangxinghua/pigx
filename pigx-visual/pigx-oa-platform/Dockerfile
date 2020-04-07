FROM java:8-jre

MAINTAINER wangiegie@gmail.com

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN mkdir -p /pigx-oa-platform

WORKDIR /pigx-oa-platform

EXPOSE 5005

ADD ./pigx-visual/pigx-oa-platform/target/pigx-oa-platform.jar ./

CMD sleep 120;java -Xms128m -Xmx256m -Djava.security.egd=file:/dev/./urandom -jar pigx-oa-platform.jar
