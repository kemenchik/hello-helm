echo -n "$BASE_64_KUBECONFIG" | base64 --decode > ./conf
KUBECONFIG_PATH=$(pwd)/conf

helm install "hello" ./ --values "values.yaml" --force -f $KUBECONFIG_PATH --set configmap.hello_message=$OVERRIDE_MESSAGE --set hello.image=$HELLO_IMAGE --set teamcity.agent.server_url=$TEAMCITY_SERVER_URL --set ingress.host=$INGRESS_HOST
