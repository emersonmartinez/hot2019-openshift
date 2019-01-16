#!/bin/bash

oc patch deployment carts -p '{"spec":{"replicas":0}}'
oc patch deployment catalogue -p '{"spec":{"replicas":0}}' 
oc patch deployment front-end -p '{"spec":{"replicas":0}}' 
oc patch deployment orders -p '{"spec":{"replicas":0}}' 
oc patch deployment payment -p '{"spec":{"replicas":0}}' 
oc patch deployment queue-master -p '{"spec":{"replicas":0}}' 
oc patch deployment rabbitmq -p '{"spec":{"replicas":0}}' 
oc patch deployment shipping -p '{"spec":{"replicas":0}}' 
oc patch deployment user -p '{"spec":{"replicas":0}}'

sleep 20s
oc get po -o wide

oc patch deployment carts -p '{"spec":{"replicas":1}}'
oc patch deployment catalogue -p '{"spec":{"replicas":1}}' 
oc patch deployment front-end -p '{"spec":{"replicas":1}}'
oc patch deployment orders -p '{"spec":{"replicas":1}}'
oc patch deployment payment -p '{"spec":{"replicas":1}}'
oc patch deployment queue-master -p '{"spec":{"replicas":1}}'
oc patch deployment rabbitmq -p '{"spec":{"replicas":1}}'
oc patch deployment shipping -p '{"spec":{"replicas":1}}'
oc patch deployment user -p '{"spec":{"replicas":1}}'

sleep 20s
oc get po -o wide

