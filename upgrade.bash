#! /bin/bash

set -o errexit -o nounset

echo -n "$BASE_64_KUBECONFIG" | base64 --decode > ./conf
KUBECONFIG_PATH=$(pwd)/conf

helm upgrade --atomic -i hello . -n default \
  --set hello.image=$HELLO_IMAGE \
  --set teamcity.agent.server_url=$TEAMCITY_SERVER_URL \
  --set ingress.host=$NGROK_HOST \
  --kubeconfig=$KUBECONFIG_PATH
