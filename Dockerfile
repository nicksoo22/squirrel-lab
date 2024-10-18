FROM alpine:latest

RUN apk add bash
RUN net user /add Nick
USER Nick
ADD dummy.txt .
