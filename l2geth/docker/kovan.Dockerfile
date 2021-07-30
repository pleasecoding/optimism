FROM golang:1.13-alpine
RUN apk add --no-cache build-base make gcc musl-dev linux-headers git bash

WORKDIR /app/optimism/verifier/
COPY / /app/optimism/verifier/
RUN make geth
RUN chmod +x ./build/bin/geth

WORKDIR /app/optimism/verifier/scripts/
EXPOSE 8545
ENTRYPOINT ["sh","./start-kovan.sh"]
