# Build image
FROM golang:1.16 as build

COPY . /app

WORKDIR /app
RUN go mod vendor && go build -o devops_test main.go

# Main image
FROM debian:buster
ENV APP_NAME="devops_test"

WORKDIR /app
COPY --from=build /app/$APP_NAME /app/

ENTRYPOINT "./devops_test"
