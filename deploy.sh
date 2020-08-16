#! /bin/bash
env > .env

echo 'Deploying config map'
oc process -f ConfigMap.yml | oc apply -f -

echo 'Deploying JobManagerService'
oc process -f JobManagerService.yml | oc apply -f -

echo 'Deploying JobMangerRestService'
oc process -f JobManagerRestService.yml | oc apply -f -

echo 'Deploying TaskManagerQueryStatService'
oc process -f TaskManagerQueryStatService.yml | oc apply -f -

echo 'Deploying JobManagerJob'
oc process -f JobManagerJob.yml | oc apply -f -

echo 'Deploying JobManagerJobDeployment'
oc process -f TaskManagerJobDeployment.yml | oc apply -f -




