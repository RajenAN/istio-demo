##Happy Path
echo 'Happy Path';
echo '-----------------------------------------------------------------------';
https --verify=certs/istio.com.crt --cert=certs/client.istio.com.crt --cert-key=certs/client.istio.com.key  istio.demo/v1/istiodemo
echo '-----------------------------------------------------------------------';
##TLS Version Validation
echo 'TLS Version Validation';
echo '-----------------------------------------------------------------------';
https --verify=certs/istio.com.crt --cert=certs/client.istio.com.crt --cert-key=certs/client.istio.com.key --ssl=tls1.2 istio.demo/v1/istiodemo
echo '-----------------------------------------------------------------------';
##Cipher Validation test
echo 'Cipher Validation';
echo '-----------------------------------------------------------------------';
https --verify=certs/istio.com.crt --cert=certs/client.istio.com.crt --cert-key=certs/client.istio.com.key --ciphers=ECDHE-RSA-DES-CBC3-SHA istio.demo/v1/istiodemo
echo '-----------------------------------------------------------------------';