FROM golang:1.21.0-alpine3.18

COPY entrypoint.sh /entrypoint.sh

RUN apk add --update --no-cache \
           graphviz \
           ttf-freefont

RUN go install github.com/ofabry/go-callvis@latest \
    && cp $GOPATH/bin/go-callvis /usr/local/bin/

ENTRYPOINT ["/entrypoint.sh"]
