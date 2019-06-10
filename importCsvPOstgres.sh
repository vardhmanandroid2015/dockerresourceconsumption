#! /bin/bash

export PGPASSWORD=$1

psql -h localhost -p 5433 -d dockeruser -U dockeruser -c "CREATE TABLE IF NOT EXISTS dockerresourcecsv (loggingTime timestamp, containerId text, containerName text, CPUPerc numeric);"

psql -h localhost -p 5433 -d dockeruser -U dockeruser -c "\copy dockerresourcecsv FROM './dockerResourceConsumption.csv' delimiter ',';"