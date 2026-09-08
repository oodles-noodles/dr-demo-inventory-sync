FROM golang:1.22-alpine AS build
WORKDIR /src
COPY . .
RUN go build -o /out/dr-demo-inventory-sync .

FROM alpine:3.19
COPY --from=build /out/dr-demo-inventory-sync /usr/local/bin/dr-demo-inventory-sync
EXPOSE 8080
ENTRYPOINT ["/usr/local/bin/dr-demo-inventory-sync"]
