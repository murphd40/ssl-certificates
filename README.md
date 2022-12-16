# ssl-certificates

## Usage

- Run `make docker-build` to build the docker container
- Run `make create-root-pair` to generate a CA cert/key pair

## Kubernetes

To create a kubernetes TLS secret using the CA, run the following command

```sh
kubectl create secret tls tls-secret --cert=./out/ca.cert.pem --key=./out/ca.key.pem
```
