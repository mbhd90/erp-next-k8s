#!/bin/bash

kubectl delete -f deployments/backend-deployment.yaml
kubectl delete -f deployments/configurator-deployment.yaml
kubectl delete -f deployments/create-site-job.yaml
kubectl delete -f deployments/db-deployment.yaml
kubectl delete -f deployments/frontend-deployment.yaml
kubectl delete -f deployments/queue-default-deployment.yaml
kubectl delete -f deployments/queue-long-deployment.yaml
kubectl delete -f queue-short-deployment.yaml
kubectl delete -f deployments/redis-cache-deployment.yaml
kubectl delete -f deployments/redis-queue-deployment.yaml
kubectl delete -f deployments/redis-socketio-deployment.yaml
kubectl delete -f deployments/scheduler-deployment.yaml
kubectl delete -f deployments/websocket-deployment.yaml

kubectl delete -f services/db-service.yaml
kubectl delete -f services/redis-cache-service.yaml
kubectl delete -f services/redis-queue-service.yaml
kubectl delete -f services/redis-socketio-service.yaml
kubectl delete -f services/websocket-service.yaml
kubectl delete -f services/backend-service.yaml
kubectl delete -f services/frontend-service.yaml

kubectl delete -f pvcs/sites-pvc.yaml
kubectl delete -f pvcs/assets-pvc.yaml
kubectl delete -f pvcs/db-data-pvc.yaml
kubectl delete -f pvcs/redis-cache-data-pvc.yaml
kubectl delete -f pvcs/redis-queue-data-pvc.yaml
kubectl delete -f pvcs/redis-socketio-data-pvc.yaml

kubectl delete -f pvcs/sites-pv.yaml
kubectl delete -f pvcs/assets-pv.yaml
kubectl delete -f pvcs/db-data-pv.yaml
kubectl delete -f pvcs/redis-cache-data-pv.yaml
kubectl delete -f pvcs/redis-queue-data-pv.yaml
kubectl delete -f pvcs/redis-socketio-data-pv.yaml

kubectl delete -f pvcs/storage-class.yaml
kubectl delete -f secrets.yaml
kubectl delete -f configs.yaml
kubectl delete -f namespace.yaml