#!/bin/bash

#kubectl run --generator=run-pod/v1 tools --rm -i --tty --image centos --dry-run -- bash
#kubectl run --generator=run-pod/v1 tools --rm -i --tty --image centos --dry-run
kubectl apply -f tools.json
