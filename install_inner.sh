KUBE_CONFIG="C:/Users/Семён/.kube/config"
NGROK_HOST="fond-bobcat-sadly.ngrok-free.app"

C:/helm/helm upgrade -i hello ./ \
	--set hello.image="kemenchik/hello-app:0.0.5" \
	--set teamcity.agent.server_url="https://"$NGROK_HOST \
	--set ingress.host=$NGROK_HOST \
  --kubeconfig=$KUBE_CONFIG