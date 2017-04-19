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

    $ git clone https://github.com/KunioOkita/dev_env_on_docker.git
    $ cd dev_env_on_docker
    $ chmod +x make_dir.sh && ./make_dir.sh
    $ docker-compose up
