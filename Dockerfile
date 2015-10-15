FROM java:openjdk-8u45-jdk
MAINTAINER stormcat24 <a.yamada24@gmail.com>

RUN apt-get install -y git && \
    git clone https://github.com/CyberAgent/aeromock-brew.git && \
    cd aeromock-brew && ./gradlew use -PaeromockVersion=latest

# config
ADD config.yaml /root/.aeromock/config.yaml

# run
ENTRYPOINT ~/.aeromock/applications/current/aeromock
EXPOSE 3183
