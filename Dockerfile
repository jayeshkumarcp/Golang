FROM golang:latest
WORKDIR /app
RUN go mod download
COPY . /app
RUN GOOS=linux go build -a -o /product
EXPOSE 8000
CMD ["/product"]
