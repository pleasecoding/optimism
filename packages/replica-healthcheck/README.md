# @eth-optimism/replica-healthcheck

## Getting started

### Configuration

| Variable                 | Purpose                                                  | Default                                                                                  |
| ------------------------ | -------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| ETH_NETWORK              | Ethereum Layer1 and Layer2 network (mainnet,kovan)       | mainnet (change to `kovan` for the test network)                                         |
| ETH_NETWORK_RPC_PROVIDER | Layer2 source of truth endpoint, used for the sync check | https://mainnet.optimism.io (change to `https://kovan.optimism.io` for the test network) |
| ETH_REPLICA_RPC_PROVIDER | Layer2 local replica endpoint, used for the sync check   | http://localhost:9991                                                                    |
| L2GETH_IMAGE_TAG         | L2geth version                                           | 0.4.                                                                                     |
