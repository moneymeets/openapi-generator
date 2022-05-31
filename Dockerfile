FROM openjdk:8-jdk-alpine

ENV GEN_DIR /opt/openapi-generator
WORKDIR ${GEN_DIR}
VOLUME  ${MAVEN_HOME}/.m2/repository

ENV MAVEN_HOME=/usr/share/maven

RUN apk --no-cache add ca-certificates openssl &&  update-ca-certificates

RUN cd /tmp \
   && wget https://archive.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz \
   && wget https://archive.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz.sha1 \
   && echo -e "$(cat apache-maven-3.3.9-bin.tar.gz.sha1)  apache-maven-3.3.9-bin.tar.gz" | sha1sum -c - \
   && tar zxf apache-maven-3.3.9-bin.tar.gz \
   && rm -rf apache-maven-3.3.9-bin.tar.gz \
   && rm -rf *.sha1 \
   && mv ./apache-maven-3.3.9 /usr/share/maven \
   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

RUN set -x && \
    apk add --no-cache bash

# Required from a licensing standpoint
COPY ./LICENSE ${GEN_DIR}

# Required to compile openapi-generator
COPY ./google_checkstyle.xml ${GEN_DIR}

# Modules are copied individually here to allow for caching of docker layers between major.minor versions
COPY ./modules/openapi-generator-gradle-plugin ${GEN_DIR}/modules/openapi-generator-gradle-plugin
COPY ./modules/openapi-generator-maven-plugin ${GEN_DIR}/modules/openapi-generator-maven-plugin
COPY ./modules/openapi-generator-online ${GEN_DIR}/modules/openapi-generator-online
COPY ./modules/openapi-generator-cli ${GEN_DIR}/modules/openapi-generator-cli
COPY ./modules/openapi-generator ${GEN_DIR}/modules/openapi-generator
COPY ./pom.xml ${GEN_DIR}

# Pre-compile openapi-generator-cli
RUN mvn -am -pl "modules/openapi-generator-cli" package

# This exists at the end of the file to benefit from cached layers when modifying docker-entrypoint.sh.
COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["help"]
