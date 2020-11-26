FROM golang:1.14.9-alpine as builder
WORKDIR /go/src/
COPY /src/go-hpa .
RUN GOOS=linux go build main.go

FROM scratch
COPY --from=builder /go/src/main .
EXPOSE 8000
CMD ["./main"]