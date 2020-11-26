FROM golang:1.14.9-alpine as builder
WORKDIR /go/src/
COPY /src/go-hpa .
RUN GOOS=linux go build main.go

FROM alpine:3.9.6
COPY --from=builder /go/src/main .
EXPOSE 8000
CMD ["./main"]