FROM golang:1.13-alpine

MAINTAINER Kirill Garbar <kirill@iterium.co.uk>

RUN apk add --no-cache git make

# Install golint
ENV GOPATH /go
ENV PATH ${GOPATH}/bin:$PATH

# 'go test' on alpine requires gcc in GOPATH mode
ENV CGO_ENABLED=0

RUN go get -u golang.org/x/lint/golint
RUN go get -u github.com/kyoh86/richgo
RUN go get -u github.com/jstemmer/go-junit-report
