kubectl delete cm spring-boot-configmaps;
kubectl create cm spring-boot-configmaps --from-literal hostv1=invalid-host --from-literal hostv2=invalid-host
kubectl scale --replicas=2 deployment/istio-demo-wrapper 