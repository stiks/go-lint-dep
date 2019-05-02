FROM golang:1.12-alpine

MAINTAINER Kirill Garbar <kirill@iterium.co.uk>

RUN apk add --no-cache git make

# Install golint
ENV GOPATH /go
ENV PATH ${GOPATH}/bin:$PATH
RUN go get -u github.com/golang/lint/golint
RUN go get -u github.com/kyoh86/richgo
