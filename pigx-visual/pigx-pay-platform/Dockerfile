FROM java:8-jre

MAINTAINER wangiegie@gmail.com

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN mkdir -p /pigx-pay-platform

WORKDIR /pigx-pay-platform

EXPOSE 5010

ADD ./pigx-visual/pigx-pay-platform/target/pigx-pay-platform.jar ./

CMD sleep 120;java -Xms128m -Xmx256m -Djava.security.egd=file:/dev/./urandom -jar pigx-pay-platform.jar
