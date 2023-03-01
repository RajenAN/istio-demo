kubectl delete cm spring-boot-configmaps;
kubectl create cm spring-boot-configmaps --from-literal hostv1=external.istiodemo --from-literal hostv2=istio-demo-v1-0
kubectl scale --replicas=0 deployment/istio-demo-wrapper 
kubectl scale --replicas=1 deployment/istio-demo-wrapper 