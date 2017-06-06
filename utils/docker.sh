#!/bin/bash
# Make sure you have logged into the openshift console and get retrived your token
set -x

REG="https://registry.ocp.example.com"
sudo docker login --username=$(oc whoami) --password=$(oc whoami -t) ${REG}
