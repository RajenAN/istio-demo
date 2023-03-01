##Happy Path
echo 'Happy Path';
echo '-----------------------------------------------------------------------';
https --verify=certs/istio.com.crt --cert=certs/client.istio.com.crt --cert-key=certs/client.istio.com.key  external.istiodemo:32172/v1/istiodemo
