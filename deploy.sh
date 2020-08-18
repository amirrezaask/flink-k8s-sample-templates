#! /bin/bash
env > .env


echo 'Defining Common Resources'
oc process -f common.yml | oc apply -f -

echo 'Deploying Job Cluster'
oc process -f job-cluster.yml | oc apply -f -





