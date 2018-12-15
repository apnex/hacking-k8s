#!/bin/bash

kubectl delete -f ps-sql-server.yaml
kubectl delete -f ps-sql-claim.yaml
kubectl delete -f ps-sql-volume.yaml
kubectl delete -f ps-app-server.yaml
kubectl delete -f ps-web-server.yaml
