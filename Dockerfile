FROM debian:jessie-slim
RUN apt-get update
RUN apt-get install -y python-pip curl
RUN pip install docker-compose
RUN curl -fsSL https://get.docker.com/ | sh
RUN curl -L https://github.com/docker/machine/releases/download/v0.12.0/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine && \
  chmod +x /tmp/docker-machine && \
  cp /tmp/docker-machine /usr/local/bin/docker-machine
CMD [ '/bin/bash' ]
