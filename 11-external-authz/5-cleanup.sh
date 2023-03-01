kubectl delete -f istio-setup/ingress-gateway-tls.yaml;
kubectl delete secret mutual-credential -n istio-system;
kubectl delete -f k8s-setup/deployment_ext_authz.yaml;
kubectl delete -f istio-setup/envoyfilter-ext-authz.yaml;