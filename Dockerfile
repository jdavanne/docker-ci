FROM debian:jessie-slim
RUN apt-get update
RUN apt-get install -y python-pip
RUN pip install docker-compose
RUN docker-compose ls

