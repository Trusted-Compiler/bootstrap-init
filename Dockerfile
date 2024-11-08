FROM alpine

RUN apk update && apk upgrade
RUN apk add bash
RUN apk add qemu-system-x86_64

COPY ./build-script.sh /
COPY ./external /external/
RUN mkdir /repo
VOLUME /repo

ENTRYPOINT ["sh", "./build-script.sh"]

