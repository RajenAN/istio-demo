kubectl delete -f istio-setup/ingress-gateway-tls.yaml;
kubectl delete secret mutual-credential -n istio-system;
kubectl delete -f istio-setup/circuit-breaker.yaml;