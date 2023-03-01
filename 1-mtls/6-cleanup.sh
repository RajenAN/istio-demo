kubectl delete secret mutual-credential -n istio-system;
kubectl delete -f istio-setup/ingress-gateway-http.yaml;
kubectl delete -f istio-setup/ingress-gateway-mtls.yaml;