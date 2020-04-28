docker run --name spark-master -h spark-master -e ENABLE_INIT_DAEMON=false -d -p 8888:8888 bde2020-centos/spark-master:2.4.4-hadoop2.7
docker run --name spark-worker-1 --link spark-master:spark-master -e ENABLE_INIT_DAEMON=false -d bde2020-centos/spark-worker:2.4.4-hadoop2.7
docker exec -it spark-master jupyter notebook --ip 0.0.0.0 --port 8888 --allow-root
