FROM golang:1.18

MAINTAINER Rick Yu <cosmtrek@gmail.com>

ENV GOPATH /go
ENV GO111MODULE on

COPY . /go/src/github.com/yang-ricky/air
WORKDIR /go/src/github.com/yang-ricky/air
RUN make ci && make install

ENTRYPOINT ["/go/bin/air"]
