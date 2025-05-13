#!/bin/bash
# Namespace
kubectl apply -f namespace.yaml

# Configs and Secrets
kubectl apply -f secrets.yaml
kubectl apply -f configs.yaml

# PV/PVS
kubectl apply -f pvcs/storage-class.yaml
kubectl apply -f pvcs/assets-pv.yaml
kubectl apply -f pvcs/assets-pvc.yaml
kubectl apply -f pvcs/db-data-pv.yaml
kubectl apply -f pvcs/db-data-pvc.yaml
kubectl apply -f pvcs/redis-cache-data-pv.yaml
kubectl apply -f pvcs/redis-cache-data-pvc.yaml
kubectl apply -f pvcs/redis-queue-data-pv.yaml
kubectl apply -f pvcs/redis-queue-data-pvc.yaml
kubectl apply -f pvcs/redis-socketio-data-pv.yaml
kubectl apply -f pvcs/redis-socketio-data-pvc.yaml
kubectl apply -f pvcs/sites-pv.yaml
kubectl apply -f pvcs/sites-pvc.yaml

# Deployments
kubectl apply -f deployments/backend-deployment.yaml
kubectl apply -f deployments/configurator-deployment.yaml
kubectl apply -f deployments/create-site-job.yaml
kubectl apply -f deployments/db-deployment.yaml
kubectl apply -f deployments/frontend-deployment.yaml
kubectl apply -f deployments/queue-default-deployment.yaml
kubectl apply -f deployments/queue-long-deployment.yaml
kubectl apply -f deployments/queue-short-deployment.yaml
kubectl apply -f deployments/redis-cache-deployment.yaml
kubectl apply -f deployments/redis-queue-deployment.yaml
kubectl apply -f deployments/redis-socketio-deployment.yaml
kubectl apply -f deployments/scheduler-deployment.yaml
kubectl apply -f deployments/websocket-deployment.yaml

# Services
kubectl apply -f services/db-service.yaml
kubectl apply -f services/redis-cache-service.yaml
kubectl apply -f services/redis-queue-service.yaml
kubectl apply -f services/redis-socketio-service.yaml
kubectl apply -f services/websocket-service.yaml
kubectl apply -f services/backend-service.yaml
kubectl apply -f services/frontend-service.yaml

# sudo apt install nfs-common
# mkdir /mnt/erp
# sudo mount -t nfs -o port=3049,vers=4 IP:/erp /mnt/erp