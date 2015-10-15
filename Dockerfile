FROM java:openjdk-8-jdk
MAINTAINER stormcat24 <a.yamada24@gmail.com>

RUN apt-get install -y git \
    && git clone https://github.com/CyberAgent/aeromock-brew.git \
    && cd aeromock-brew && ./gradlew use -PaeromockVersion=latest \
    && apt-get autoremove -y git \
    && rm -rf ~/.gradle

# config
ADD config.yaml /root/.aeromock/config.yaml

# run
ENTRYPOINT ~/.aeromock/applications/current/aeromock
EXPOSE 3183
