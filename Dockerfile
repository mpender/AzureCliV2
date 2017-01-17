FROM alpine:latest

RUN apt-get update && apt-get install -y libssl-dev libffi-dev python-dev python-pip

RUN curl -L https://aka.ms/InstallAzureCli | bash

ENTRYPOINT ["az"]

tesaa
