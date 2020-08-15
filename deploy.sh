#! /bin/bash
echo 'Deploying config map'
oc process -f ConfigMap.yml --param-file=.env --param --ignore-unknown-parameters=true | oc apply -f -

echo 'Deploying JobManagerService'
oc process -f JobManagerService.yml --param-file=.env --param --ignore-unknown-parameters=true | oc apply -f -

echo 'Deploying JobMangerRestService'
oc process -f JobManagerRestService.yml --param-file=.env --param --ignore-unknown-parameters=true | oc apply -f -

echo 'Deploying TaskManagerQueryStatService'
oc process -f TaskManagerQueryStatService.yml .yml --param-file=.env --param --ignore-unknown-parameters=true | oc apply -f -

echo 'Deploying JobManagerJob'
oc process -f JobManagerJob.yml --param-file=.env --param --ignore-unknown-parameters=true | oc apply -f -

echo 'Deploying JobManagerJobDeployment'
oc process -f JobManagerJobDeployment.yml .yml --param-file=.env --param --ignore-unknown-parameters=true | oc apply -f -




