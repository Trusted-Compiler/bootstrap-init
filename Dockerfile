FROM alpine

RUN apk update && apk upgrade
RUN apk add bash
RUN apk add make
RUN apk add qemu-system-x86_64

COPY ./build-script.sh /
COPY ./external /external/
RUN mkdir /repo
VOLUME /repo

CMD sh ./build-script.sh

