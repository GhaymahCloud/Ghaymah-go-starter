FROM golang:1.21-alpine

WORKDIR /app

COPY . .

# Initialize Go module and build
RUN go mod init ghaymah-go-starter && \
    go build -o main .

EXPOSE 8080

CMD ["./main"]