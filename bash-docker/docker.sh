#!/bin/bash
# Kibana 6.4.2
# Nginx
# MySQL Server

# Start Kibana 6.4.2
docker run -d -p 5601:5601 docker.elastic.co/kibana/kibana:6.4.2

# Start MySQL
mkdir -p /storage/docker/mysql-data
docker run -d --name=mysqlcontainer -e="MYSQL_ROOT_PASSWORD=my_password" -p 6603:3306 -v=/root/docker/mysqlcontainer/conf.d:/etc/mysql/conf.d -v=/storage/docker/mysql-data:/var/lib/mysql mysql

# Start Nginx
docker run -d -p 80:80 nginx:1.14.2