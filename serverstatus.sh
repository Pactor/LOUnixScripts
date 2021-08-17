#!/bin/bash

CUSTKEY=YourKeyHere

SERVER1NAME=Server1
SERVER1PORT=5555
SERVER1QUERY=27015
SERVER1PROVKEY=server key here

SERVER2NAME=Server2
SERVER2PORT=5556
SERVER2QUERY=27016
SERVER2PROVKEY=server key here

SERVER3NAME=Server3
SERVER3PORT=5557
SERVER3QUERY=27017
SERVER3PROVKEY=server key here

SERVER4NAME=Server4
SERVER4PORT=5558
SERVER4QUERY=27019
SERVER4PROVKEY=server key here

SERVER5NAME=Server5
SERVER5PORT=5559
SERVER5QUERY=27020
SERVER5PROVKEY=server key here

SERVER6NAME=Server6
SERVER6PORT=5560
SERVER6QUERY=27021
SERVER6PROVKEY=server key here

SERVER7NAME=Server7
SERVER7PORT=5561
SERVER7QUERY=27022
SERVER7PROVKEY=server key here

SERVER8NAME=Server8
SERVER8PORT=5562
SERVER8QUERY=27023
SERVER8PROVKEY=server key here


ACTIVE1=$(lsof -t -i:$SERVER1PORT)
ACTIVE2=$(lsof -t -i:$SERVER2PORT)
ACTIVE3=$(lsof -t -i:$SERVER3PORT)
ACTIVE4=$(lsof -t -i:$SERVER4PORT)
ACTIVE5=$(lsof -t -i:$SERVER5PORT)
ACTIVE6=$(lsof -t -i:$SERVER6PORT)
ACTIVE7=$(lsof -t -i:$SERVER7PORT)
ACTIVE8=$(lsof -t -i:$SERVER8PORT)

ACTIVE1=$(lsof -t -i:$SERVER1PORT)
ACTIVE2=$(lsof -t -i:$SERVER2PORT)
ACTIVE3=$(lsof -t -i:$SERVER3PORT)
ACTIVE4=$(lsof -t -i:$SERVER4PORT)
ACTIVE5=$(lsof -t -i:$SERVER5PORT)
ACTIVE6=$(lsof -t -i:$SERVER6PORT)
ACTIVE7=$(lsof -t -i:$SERVER7PORT)
ACTIVE8=$(lsof -t -i:$SERVER8PORT)

# Will check if port for server is active, if not it will start the server

if [ -z "$ACTIVE1" ]; then
echo "Server1 is down"
./server.sh start $SERVER1NAME $SERVER1PORT $SERVER1QUERY $CUSTKEY $SERVER1PROVKEY
fi

if [ -z "$ACTIVE2" ]; then
echo "Server2 is down"
./server.sh start $SERVER2NAME $SERVER2PORT $SERVER2QUERY $CUSTKEY $SERVER2PROVKEY
fi

if [ -z "$ACTIVE3" ]; then
echo "Server3 is down"
./server.sh start $SERVER3NAME $SERVER3PORT $SERVER3QUERY $CUSTKEY $SERVER3PROVKEY
fi

if [ -z "$ACTIVE4" ]; then
echo "Server4 is down"
./server.sh start $SERVER4NAME $SERVER4PORT $SERVER4QUERY $CUSTKEY $SERVER4PROVKEY
fi

if [ -z "$ACTIVE5" ]; then
echo "Server5 is down"
./server.sh start $SERVER5NAME $SERVER5PORT $SERVER5QUERY $CUSTKEY $SERVER5PROVKEY
fi

if [ -z "$ACTIVE6" ]; then
echo "Server6 is down"
./server.sh start $SERVER6NAME $SERVER6PORT $SERVER6QUERY $CUSTKEY $SERVER6PROVKEY
fi

if [ -z "$ACTIVE7" ]; then
echo "Server7 is down"
./server.sh start $SERVER7NAME $SERVER7PORT $SERVER7QUERY $CUSTKEY $SERVER7PROVKEY
fi

if [ -z "$ACTIVE8" ]; then
echo "Server8 is down"
./server.sh start $SERVER8NAME $SERVER8PORT $SERVER8QUERY $CUSTKEY $SERVER8PROVKEY
fi


