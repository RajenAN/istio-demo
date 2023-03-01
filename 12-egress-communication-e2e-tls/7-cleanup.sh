kubectl delete secret egress-mutual-credential -n istio-system;
kubectl delete secret mutual-credential -n istio-system;
kubectl delete -f istio-setup/ingress-gateway-tls.yaml;
kubectl delete -f istio-setup/service-entry.yaml;
kubectl delete -f istio-setup/egress-gateway.yaml;
kubectl delete -f istio-setup/egress-dr.yaml;
kubectl delete -f istio-setup/vs-egress.yaml;
kubectl delete -f istio-setup/egress-dr-egress-svc.yaml;

kubectl delete cm spring-boot-configmaps;
kubectl create cm spring-boot-configmaps --from-literal hostv1=istio-demo-v1-1 --from-literal hostv2=istio-demo-v1-0
kubectl scale --replicas=0 deployment/istio-demo-wrapper 
kubectl scale --replicas=1 deployment/istio-demo-wrapper 