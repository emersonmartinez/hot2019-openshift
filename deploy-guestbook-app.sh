#!/bin/bash

oc new-project guestbook

oc adm policy add-scc-to-user anyuid system:serviceaccount:guestbook:default

oc apply -f guestbook-app/
oc expose svc/frontend
