helm upgrade "hello" ./ --values "values.yaml" -f $BASE_64_KUBECONFIG | base64 --decode \
  --set configmap.hello_message=$OVERRIDE_MESSAGE \
  --set hello.image=$HELLO_IMAGE \
  --set teamcity.agent.server_url=$TEAMCITY_SERVER_URL \
  --set ingress.host=$INGRESS_HOST
