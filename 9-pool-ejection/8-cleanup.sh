kubectl delete -f istio-setup/ingress-gateway-tls.yaml;
kubectl delete secret mutual-credential -n istio-system;
kubectl delete cm spring-boot-configmaps;
kubectl create cm spring-boot-configmaps --from-literal hostv1=istio-demo-v1-0 --from-literal hostv2=istio-demo-v1-1
kubectl scale --replicas=0 deployment/istio-demo-wrapper 
kubectl scale --replicas=1 deployment/istio-demo-wrapper 
kubectl delete -f istio-setup/pool-ejection.yaml