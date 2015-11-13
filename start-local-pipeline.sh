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

[ -x /usr/bin/jq ] || sudo apt-get install -y jq

echo
echo
echo "####################################################"
echo "# Starting pipeline containers                     #"
echo "#                                                  #"
echo "####################################################"
docker start jkmaster
docker start jkslave

echo
echo
echo "####################################################"
echo "# Setting up name resolution to work without dns   #"
echo "#                                                  #"
echo "####################################################"
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
