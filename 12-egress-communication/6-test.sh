##Happy Path
echo 'Happy Path';
echo '-----------------------------------------------------------------------';
https --verify=certs/istio.com.crt  istio.demo/v1/istiodemowrapper
echo '-----------------------------------------------------------------------';