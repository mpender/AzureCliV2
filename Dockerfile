FROM alpine:latest

RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories && apk update
RUN apk add --update \
    openssl-dev \
    libffi-dev \
    python-dev \
    py2-pip \
    gcc \
    musl-dev

RUN pip install --upgrade pip

#RUN curl -L https://aka.ms/InstallAzureCli | bash

RUN pip install --user azure-cli

ENV PATH=$PATH:/root/.local/bin/az

CMD /sbin/init
#ENTRYPOINT ["az"]
