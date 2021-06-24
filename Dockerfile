FROM alpine

RUN apk update && \
    apk upgrade && \
    apk add git git-lfs

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
