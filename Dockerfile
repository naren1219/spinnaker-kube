FROM golang

RUN PWD

ADD . /go/src/github.com/lwander/k8s-demo

RUN go install github.com/lwander/k8s-demo

ADD ./content /content

ENTRYPOINT /go/bin/k8s-demo
