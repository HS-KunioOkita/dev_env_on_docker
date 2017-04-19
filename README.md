# 開発環境構築用Docker Compose

1. Redmine depend on postgres
   |port|3000|
   |admin|cn=admin,dc=ldap,dc=example,dc=org|
2. Jenkins
   |port|8080,50000|
3. Devhub depend on mongo
4. OpenLDAP
   |port|389|
5. USVN (Subversion)
6. Rocket Chat
7. GitLab (Git)

# 手順

1. make data dirs

   $ mkdir pgdata
   $ mkdir jenkins
