FROM golang:1.10-alpine

MAINTAINER Kirill Garbar <kirill@iterium.co.uk>

RUN apk add --no-cache git make

# Install golint
ENV GOPATH /go
ENV PATH ${GOPATH}/bin:$PATH
RUN go get -u github.com/golang/lint/golint
RUN go get -u github.com/kyoh86/richgo

# Download and install the latest release of dep
ADD https://github.com/golang/dep/releases/download/v0.5.0/dep-linux-amd64 /usr/bin/dep
RUN chmod +x /usr/bin/dep
