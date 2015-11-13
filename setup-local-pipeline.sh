#!/bin/bash

domain=local

function get_docker_ip {
  local name=$1
  local ip

  echo "$(docker inspect $name \
    | jq '.[0].NetworkSettings.IPAddress' \
    | tr -d '"' \
  )"
}

set -e

echo "####################################################"
echo "# Creating Pipeline Environment                    #"
echo "#                                                  #"
echo "# Starting 'kitchen converge' in 5 sec.            #"
echo "# ====>> This will probably take >30 mins. <<====  #"
echo "####################################################"
sleep 5
cp -a Berksfile.github Berksfile
kitchen converge

echo
echo
echo "####################################################"
echo "# Setting up name resolution to work without dns   #"
echo "#                                                  #"
echo "####################################################"
sleep 5
ip=$(get_docker_ip jkmaster)
lines="$(grep -vE 'jkmaster|jkslave|dash|git|repo' /etc/hosts)"
for name in jkmaster dash git repo; do
  lines="${lines}\n$ip $name.$domain $name"
done
ip=$(get_docker_ip jkslave)
lines="${lines}\n$ip jkslave.$domain jkslave"
echo -e "$lines" | sudo tee /etc/hosts >/dev/null

for name in jkmaster jkslave; do
  kitchen login $name <<< "
    sed -e 's;^\(.*jkmaster\)$;\1 git repo dash;' /etc/hosts > /tmp/hosts.new
    cat /tmp/hosts.new | sudo tee /etc/hosts >/dev/null
  "
done
