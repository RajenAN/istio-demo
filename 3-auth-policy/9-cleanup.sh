kubectl delete -f istio-setup/ingress-gateway-tls.yaml;
kubectl delete -f istio-setup/request-authentication.yaml;
kubectl delete -f istio-setup/authpolicy-sa-default.yaml;
kubectl delete -f istio-setup/authpolicy-ns-default.yaml;
kubectl delete secret mutual-credential -n istio-system;
