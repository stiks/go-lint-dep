FROM golang:1.10

MAINTAINER Kirill Garbar <kirill@iterium.co.uk>

# Install golint
ENV GOPATH /go
ENV PATH ${GOPATH}/bin:$PATH
RUN go get -u github.com/golang/lint/golint

# Download and install the latest release of dep
ADD https://github.com/golang/dep/releases/download/v0.5.0/dep-linux-amd64 /usr/bin/dep
RUN chmod +x /usr/bin/dep
