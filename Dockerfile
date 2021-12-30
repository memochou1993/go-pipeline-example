FROM golang:latest AS builder
ARG VERSION=dev
WORKDIR /go/src/app
COPY main.go .
RUN go build -o main -ldflags=-X=main.version=${VERSION} main.go 

FROM alpine:latest
COPY --from=builder /go/src/app/main /go/bin/main
ENV PATH="/go/bin:${PATH}"
CMD ["main"]
