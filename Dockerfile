FROM scolagreco/centos-java

VOLUME /tmp

ARG JAR_FILE=app/*.jar

ADD ${JAR_FILE} /opt/app.jar

# Metadata params
ARG BUILD_DATE
ARG VERSION="v1.0"
ARG VCS_URL="https://github.com/scolagreco/centos-java-springboot.git"
ARG VCS_REF

# Metadata
LABEL maintainer="Stefano Colagreco <stefano@colagreco.it>" \
        org.label-schema.name="CentOS Java SpringBoot" \
        org.label-schema.build-date=$BUILD_DATE \
        org.label-schema.version=$VERSION \
        org.label-schema.vcs-url=$VCS_URL \
        org.label-schema.vcs-ref=$VCS_REF \
        org.label-schema.description="Docker Image CentOS per app SpringBoot"

ENTRYPOINT ["/bin/bash"]

EXPOSE 8080

WORKDIR /opt/

# https://spring.io/guides/gs/spring-boot-docker/#_containerize_it
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/opt/app.jar"]
