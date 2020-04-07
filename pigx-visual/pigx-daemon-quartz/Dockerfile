FROM java:8-jre

MAINTAINER wangiegie@gmail.com

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN mkdir -p /pigx-daemon-quartz

WORKDIR /pigx-daemon-quartz

EXPOSE 5007

ADD ./pigx-visual/pigx-daemon-quartz/target/pigx-daemon-quartz.jar ./

CMD sleep 120;java -Xms128m -Xmx256m -Djava.security.egd=file:/dev/./urandom -jar pigx-daemon-quartz.jar
