## Create CSR 
openssl req -out certs/client.istio.com.csr -newkey rsa:2048 -nodes -keyout certs/client.istio.com.key -subj "/CN=istio.demo/O=istio";

## Produce signed cert
openssl x509 -req -days 365 -CA certs/istio.com.crt -CAkey certs/istio.com.key -set_serial 0 -in certs/client.istio.com.csr -out certs/client.istio.com.crt;
