#!/bin/sh

DIRS="./gitlab/config ./gitlab/data ./gitlab/logs ./jenkins ./mongo/data/runtime/db ./mongo/dump ./svn/svn ./svn/backup ./svn/conf ./ldap/config ./ldap/data ./pgdata/ ./redmine/data"

for d in $DIRS
do
    mkdir -p $DIRS
done
