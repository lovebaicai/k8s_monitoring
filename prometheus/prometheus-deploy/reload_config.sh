# reload prometheus config
curl -X POST http://172.16.43.23:9090/-/reload

# reload alertmanager config
curl -X POST http://172.16.43.23:9093/-/reload
