# erp-next-k8s

## 1: Edit secrets.yaml file
- ${MYSQL_ROOT_PASSWORD} : MYSQL password
- ${ADMIN_PASSWORD} : Application Admin password

## 2: Edit configs.yaml file
- ${DB_PORT}
- ${REDIS_CACHE} : redis-cache-service:6379
- ${REDIS_QUEUE} : redis-queue-service:6379
- ${REDIS_SOCKETIO} : redis-socketio-service:6379
-  ${SOCKETIO_PORT} : 9000
-  ${SOCKETIO}: websocket-service:9000
-  ${BACKEND}: backend-service:8000
-  ${FRAPPE_SITE_NAME_HEADER} : X-Frappe-Site-Name
-  ${UPSTREAM_REAL_IP_ADDRESS} : 127.0.0.1
-  ${UPSTREAM_REAL_IP_HEADER} : X-Forwarded-For
-  ${UPSTREAM_REAL_IP_RECURSIVE} : on

## 3: Deploy apps
<code> bash deployment.sh </code>
