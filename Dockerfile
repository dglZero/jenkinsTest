FROM demo

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

ENV JAVA_OPTS=""
ENV JAVA_JVM=""
ENTRYPOINT [ "sh", "-c", "java  $JAVA_OPTS $JAVA_JVM -Djava.security.egd=file:/dev/./urandom -Dfile.encoding=UTF8  -Duser.timezone=GMT+08  -jar /target/demo-0.0.1-SNAPSHOT.jar" ]
