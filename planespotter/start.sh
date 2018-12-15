#!/bin/bash

kubectl create -f ps-sql-volume.yaml
kubectl create -f ps-sql-claim.yaml
kubectl create -f ps-sql-server.yaml
kubectl create -f ps-app-server.yaml
kubectl create -f ps-web-server.yaml
