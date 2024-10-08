FROM golang:1.19

WORKDIR /app

COPY . .

RUN go mod download

RUN go build -o hello main.go

CMD ["./hello"]
