FROM alpine:latest
RUN net user /add Nick
USER Nick
RUN apk add bash

ADD dummy.txt .
