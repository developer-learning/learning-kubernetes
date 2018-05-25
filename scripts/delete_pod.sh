#!/bin/sh
# 如果$2 为空则默认default
if [ $# == 1 ]; then
  echo "kubectl delete pod $1 -n default"
  kubectl delete pod $1
elif [ $# == 2 ]; then
  echo "kubectl delete pod $1 -n $2"
  kubectl delete pod $1 -n $2
else
  echo "Unsupport args."
fi
