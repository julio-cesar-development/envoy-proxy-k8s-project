#!/bin/bash

set -e

if [ -z "$(which kubectl)" ]; then
  echo "You must install kubectl in order to execute this script"
  exit 1
fi

# API objects
kubectl delete -f ./
kubectl delete ns envoy
