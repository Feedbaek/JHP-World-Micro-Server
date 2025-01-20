FROM golang:1.22-alpine

# go build
WORKDIR /app
COPY . .

# install g++
RUN apk add --no-cache g++

# go mod
RUN go mod tidy && go build -o go_is_awesome

# expose port
EXPOSE 8080

# run
ENTRYPOINT ["./go_is_awesome"]
