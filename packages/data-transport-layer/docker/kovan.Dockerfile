FROM node:12-alpine
#ARG VERSION=v0.7.6
#ARG SOLC_VERSION=${VERSION}+commit.7338295f
#ARG SOLC_UPSTREAM=https://github.com/ethereum/solc-bin/raw/gh-pages/linux-amd64/solc-linux-amd64-${SOLC_VERSION}
#ARG OVM_SOLC_UPSTREAM=https://github.com/ethereum-optimism/solc-bin/raw/gh-pages/bin/soljson-${VERSION}.js
#ADD $SOLC_UPSTREAM ./solc
#ADD $OVM_SOLC_UPSTREAM ./ovm-solc
#RUN apk add python make gcc g++

WORKDIR /app/optimism/dtl/
ADD db /app/optimism/dtl/db
ADD dist /app/optimism/dtl/dist
ADD node_modules /app/optimism/dtl/node_modules
ADD .env.kovan /app/optimism/dtl/
RUN cp .env.kovan .env
EXPOSE 7878
ENTRYPOINT ["node", "dist/src/services/run.js"]
