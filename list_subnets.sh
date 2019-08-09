#!/bin/sh

##########################
# input variables        #
##########################
echo "what tennant np or pd ?"
read tennant

echo "what location(eastus, eastus2, westus2, westus? "
read location

echo "what sub (sub01, sub02, hub01, etc...) ?"
read sub


echo "here is the zone that will be modified az-$tennant-$location-$sub"


########################
# VARIABLES            #
########################
ZONE="az-$tennant-$location-$sub"
SUB="az-$tennant-$sub"
RG="$ZONE-network"
VNET="$RG-vnet"

RouteTable="$tennant-$location"  # added the generic route table...
echo $RouteTable                 # added outputting the route table name to screen

##########################
# set the sub            #
##########################
az account set -s $SUB
az account show




#########################
# list the subnets      #
#########################
az network vnet subnet list --resource-group $RG --vnet-name $VNET --output table


