#!/bin/bash

oc create -f manifests/k8s-namespaces.yml

oc apply -f manifests/backend-services/user-db/dev/
oc apply -f manifests/backend-services/user-db/production/

oc apply -f manifests/backend-services/shipping-rabbitmq/dev/
oc apply -f manifests/backend-services/shipping-rabbitmq/production/

oc apply -f manifests/backend-services/carts-db/

oc apply -f manifests/backend-services/catalogue-db/

oc apply -f manifests/backend-services/orders-db/

oc apply -f manifests/sockshop-app/dev/
oc apply -f manifests/sockshop-app/production/

oc project dev
oc expose svc/front-end
oc expose svc/carts

oc project production
oc expose svc/front-end
oc expose svc/carts
