FROM docker:17.09.0-ce

RUN apk add curl curl-dev --no-cache && \
    curl -Ls https://github.com/docker/machine/releases/download/v0.13.0/docker-machine-`uname -s`-`uname -m` -o /usr/local/bin/docker-machine && \
    chmod +x /usr/local/bin/docker-machine && \
    curl -Ls https://github.com/docker/compose/releases/download/1.17.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose

ADD ./bin /usr/local/bin/

ENV MACHINE_STORAGE_PATH /codefresh/volume/.docker/machine

CMD ["sh"]