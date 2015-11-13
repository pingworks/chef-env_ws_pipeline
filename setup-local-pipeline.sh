#!/bin/bash

set -e

sudo apt-get install -y jq

echo "####################################################"
echo "# Creating Pipeline Environment                    #"
echo "#                                                  #"
echo "# Starting 'kitchen converge' in 5 sec.            #"
echo "# ====>> This will probably take >30 mins. <<====  #"
echo "####################################################"
sleep 5
cp -a Berksfile.github Berksfile
kitchen converge

./start-local-pipeline.sh
