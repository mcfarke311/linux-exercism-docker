FROM ubuntu:19.10
ARG TOKEN
RUN apt-get update; apt-get install -y vim gcc make curl
RUN curl -G -L https://github.com/exercism/cli/releases/download/v3.0.13/exercism-linux-64bit.tgz | tar xvz && mv exercism /usr/local/bin
RUN exercism configure --token=$TOKEN