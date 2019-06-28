FROM golang:1-alpine

RUN apk add --no-cache git \
  && go get -d -v github.com/DevOnOFW/Pain \
  && go install github.com/DevOnOFW/Pain \
  && rm -rf ~/go/src/github.com/DevOnOFW/Pain \
  && apk del git

ENTRYPOINT ["Pain"]

CMD ["--help"]
