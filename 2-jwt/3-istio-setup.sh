kubectl apply -f istio-setup/ingress-gateway-tls.yaml;
kubectl apply -f istio-setup/request-authentication.yaml;
kubectl apply -f istio-setup/authorization-policy-jwt.yaml;