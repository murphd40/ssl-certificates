# ssl-certificates

## Usage

- Run `make docker-build` to build the docker container
- Run `make create-root-pair` to generate a CA cert/key pair

## Kubernetes

To create a kubernetes TLS secret using the CA, run the following command

```sh
kubectl create secret tls tls-secret --cert=./out/ca.cert.pem --key=./out/ca.key.pem
```

## CA trust

To add the CA as a trusted CA on your client machine, add the file to

```sh
/etc/pki/ca-trust/source/anchors
```

with a `.crt` suffix.

Then run `sudo update-ca-trust` and restart docker
