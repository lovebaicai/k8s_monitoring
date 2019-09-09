cd /etc/etcd/ssl/
kubectl -n monitoring create secret generic etcd-certs --from-file=./ca.pem --from-file=./etcd.pem --from-file=./etcd-key.pem
