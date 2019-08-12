FROM golang:1.11-alpine
WORKDIR /go/src/test1
COPY . .
RUN go get -d -v ./...
RUN go install -v ./...
RUN apk update && apk add bash
CMD ["test1"]
