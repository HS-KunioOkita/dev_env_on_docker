#!/bin/sh

#DIRS="./gitlab/config ./gitlab/data ./gitlab/logs ./jenkins ./mongo/data/runtime/db ./mongo/dump ./svn ./ldap/config ./ldap/data ./pgdata/ ./redmine/data ./keys/web ./keys/worker"
DIRS="./gitlab/config ./gitlab/data ./gitlab/logs ./mongo/data/runtime/db ./mongo/dump ./svn ./ldap/config ./ldap/data ./pgdata/ ./redmine/data ./keys/web ./keys/worker"

for d in $DIRS
do
    mkdir -p $DIRS
done

ssh-keygen -t rsa -f ./keys/web/tsa_host_key -N ''
ssh-keygen -t rsa -f ./keys/web/session_signing_key -N ''
ssh-keygen -t rsa -f ./keys/worker/worker_key -N ''

cp ./keys/worker/worker_key.pub ./keys/web/authorized_worker_keys
cp ./keys/web/tsa_host_key.pub ./keys/worker

#chmod 0777 ./jenkins
