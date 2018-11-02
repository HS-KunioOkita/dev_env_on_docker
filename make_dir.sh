#!/bin/sh

DIRS="./gitlab/config ./gitlab/data ./gitlab/logs ./jenkins ./mongo/data/runtime/db ./mongo/dump ./svn ./ldap/config ./ldap/data ./pgdata/ ./redmine/data  ./redmine/files ./redmine/plugins ./redmine/themes""

for d in $DIRS
do
    mkdir -p $DIRS
done

chmod 0777 ./jenkins
