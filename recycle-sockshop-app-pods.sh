#!/bin/bash

oc patch deployment carts -p '{"spec":{"template":{"metadata":{"annotations":{"dynatrace/instrument": "true"}}}}}'
oc patch deployment catalogue -p '{"spec":{"template":{"metadata":{"annotations":{"dynatrace/instrument": "true"}}}}}'
oc patch deployment front-end -p '{"spec":{"template":{"metadata":{"annotations":{"dynatrace/instrument": "true"}}}}}'
oc patch deployment orders -p '{"spec":{"template":{"metadata":{"annotations":{"dynatrace/instrument": "true"}}}}}'
oc patch deployment payment -p '{"spec":{"template":{"metadata":{"annotations":{"dynatrace/instrument": "true"}}}}}'
oc patch deployment queue-master -p '{"spec":{"template":{"metadata":{"annotations":{"dynatrace/instrument": "true"}}}}}'
oc patch deployment rabbitmq -p '{"spec":{"template":{"metadata":{"annotations":{"dynatrace/instrument": "true"}}}}}'
oc patch deployment shipping  -p '{"spec":{"template":{"metadata":{"annotations":{"dynatrace/instrument": "true"}}}}}'
oc patch deployment user -p '{"spec":{"template":{"metadata":{"annotations":{"dynatrace/instrument": "true"}}}}}'

sleep 20s
oc get po -o wide
