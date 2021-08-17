#!/bin/bash

# How to use

# save this file to your linux drive, lets choose the name server

# Then after it is saved type chmod 755 server

# Then you can run it as such

# ./server start My_ServerName1 5555 27015 gK8snfgh Clh76shdd

# with the last 2 values being Customer key and providerkey

# ./server start SERVERNAME PORT QUERYPORT CUSTOMERKEY PROVIDERKEY

ACTION=$1

SERVERNAME=$2

SERVERPORT=$3

QUERYPORT=$4

CUSTOMERKEY=$5

PROVIDERKEY=$6

# You need to change this value to your external IP address
IPADDRESS=YourIPAddress

# You need to change this value to the directory MistServer-Linux-Shipping is in
DIR='/home/yourLastOasisInstallLocation'


if [ -z "$ACTION" ]; then
        echo "You must supply an action, actions are start or stop"
fi

if [ "$ACTION" == "start" ]; then
        if [ -z "$SERVERNAME" ];then
                echo "For the start command you must supply a servername as second argument!"
                else
                if [ -z "$SERVERPORT" ]; then
                        echo "For the start command you must supply a server port as the third argument!"
                        else
                        if [ -z "$QUERYPORT" ];then
                                echo "For the start command you must supply a query port as the forth argument!"
                                else
                                if [ -z "$CUSTOMERKEY" ];then
                                        echo "For the start command you must supply a customer key as the 5th argument!"
                                        else
                                        if [ -z "$PROVIDERKEY" ];then
                                                echo "For the start command you must supply a provider key as the 6th argument!"
                                                else
                                                #we can do this now
                                                        echo "Starting Server $SERVERNAME on ports $SERVERPORT / $QUERYPORT"
                                                        "$DIR"/MistServer-Linux-Shipping -log -force_steamclient_link -messaging -NoLiveServer -EnableCheats -backendapiurloverride="backend.last-oasis.com" -identifier=$SERVERNAME -port=$SERVERPORT -CustomerKey=$CUSTOMERKEY -ProviderKey=$PROVIDERKEY -slots=100 -QueryPort=$QUERYPORT -OverrideConnectionAddress=$IPADDRESS &
                                        fi
                                fi
                        fi
                fi
        fi
fi

# To stop a server, assuming this file is saved as server, enter the port the server is running on
# ./server stop 5555

if [ "$ACTION" == "stop" ]; then
        if [ -z "$SERVERNAME" ]; then
                echo "For the stop command you need to enter the port the server is currently running on!"
        else
                echo "Stopping server on port $SERVERNAME"
                sudo kill $(sudo lsof -t -i:$SERVERNAME)
        fi
fi
