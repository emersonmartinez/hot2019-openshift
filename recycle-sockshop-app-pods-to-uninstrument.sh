#!/bin/bash

oc patch deployment carts -p '{"spec":{"template":{"metadata":{"annotations":{"dynatrace/instrument": "false"}}}}}'
oc patch deployment catalogue -p '{"spec":{"template":{"metadata":{"annotations":{"dynatrace/instrument": "false"}}}}}'
oc patch deployment front-end -p '{"spec":{"template":{"metadata":{"annotations":{"dynatrace/instrument": "false"}}}}}'
oc patch deployment orders -p '{"spec":{"template":{"metadata":{"annotations":{"dynatrace/instrument": "false"}}}}}'
oc patch deployment payment -p '{"spec":{"template":{"metadata":{"annotations":{"dynatrace/instrument": "false"}}}}}'
oc patch deployment queue-master -p '{"spec":{"template":{"metadata":{"annotations":{"dynatrace/instrument": "false"}}}}}'
oc patch deployment rabbitmq -p '{"spec":{"template":{"metadata":{"annotations":{"dynatrace/instrument": "false"}}}}}'
oc patch deployment shipping  -p '{"spec":{"template":{"metadata":{"annotations":{"dynatrace/instrument": "false"}}}}}'
oc patch deployment user -p '{"spec":{"template":{"metadata":{"annotations":{"dynatrace/instrument": "false"}}}}}'

sleep 20s
oc get po -o wide
