#!/bin/bash

set -e

ENTRADA="10.0.0.1 my-server.my-domain.com"

cat hosts | while read LINHA
do
  if [[ "$LINHA" == $ENTRADA ]]
  then  
    cat hosts
    exit 1
  fi
done

echo $ENTRADA >> hosts

cat hosts
