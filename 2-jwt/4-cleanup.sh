kubectl delete -f istio-setup/ingress-gateway-tls.yaml;
kubectl delete -f istio-setup/request-authentication.yaml;
kubectl delete -f istio-setup/authorization-policy-jwt.yaml;
kubectl delete secret mutual-credential -n istio-system;
