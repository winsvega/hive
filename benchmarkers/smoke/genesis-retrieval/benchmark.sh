#!/bin/sh
set -e

# Retrieve the genesis block in a loop
for i in `seq 1 $HIVE_BENCHMARKER_ITERS`; do
	curl -s -X POST --data '{"jsonrpc":"2.0","method":"eth_getBlockByNumber","params":["0x0", false],"id":0}' "$HIVE_CLIENT_IP:8545" > /dev/null
done
