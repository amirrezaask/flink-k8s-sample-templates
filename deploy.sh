#! /bin/bash
echo 'Deploying config map'
oc process -f ConfigMap.yml --param-file=.env --param --ignore-unknown-parameters=true | oc apply -f -

echo 'Deploying JobManager Service'
oc process -f JobManagerService.yml --param-file=.env --param --ignore-unknown-parameters=true | oc apply -f -

echo 'Deploying JobManger Rest Service'
oc process -f JobManagerRestService.yml --param-file=.env --param --ignore-unknown-parameters=true | oc apply -f -

echo 'Deploying TaskManagerQueryStatService'
oc process -f TaskManagerQueryStatService.yml .yml --param-file=.env --param --ignore-unknown-parameters=true | oc apply -f -





