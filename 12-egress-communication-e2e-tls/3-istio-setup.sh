kubectl apply -f istio-setup/ingress-gateway-tls.yaml;
kubectl apply -f istio-setup/service-entry.yaml;
kubectl apply -f istio-setup/egress-gateway.yaml;
kubectl apply -f istio-setup/egress-dr.yaml;
kubectl apply -f istio-setup/vs-egress.yaml;
kubectl apply -f istio-setup/egress-dr-egress-svc.yaml