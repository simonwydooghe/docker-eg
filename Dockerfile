FROM alpine:3.6
MAINTAINER Simon Wydooghe <simon@wydooghe.com>

RUN apk --no-cache add python2 less
RUN apk --no-cache add --virtual build-dependencies py2-pip \
 && pip install eg \
 && apk del build-dependencies

ENTRYPOINT ["eg"]
