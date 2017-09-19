# 開発環境構築用Docker Compose

1. Redmine depend on postgres  
    - port : 3000  
    - admin : cn=admin,dc=ldap,dc=example,dc=org  

2. Jenkins
    - port : 8080,50000  

3. OpenLDAP
    - port : 389  

4. Subversion(usvn)  
    - port : 8000

5. Rocket Chat depend on mongo  
    - port : 5000  

6. GitLab (Git)  
    - port : 5443, 5080, 5022  

7. Portainer(Docker管理用GUI) 
    - port : 9000  

8. ConcourseCI(パイプライン形式のCIツール)
    - port : 8081

# 手順

    $ git clone https://github.com/KunioOkita/dev_env_on_docker.git
    $ cd dev_env_on_docker
    $ mkdir -p keys/web keys/worker
    $ sudo ssh-keygen -t rsa -f ./keys/web/tsa_host_key -N ''
    $ sudo ssh-keygen -t rsa -f ./keys/web/session_signing_key -N ''
    $ sudo ssh-keygen -t rsa -f ./keys/worker/worker_key -N ''
    $ cp ./keys/worker/worker_key.pub ./keys/web/authorized_worker_keys
    $ cp ./keys/web/tsa_host_key.pub ./keys/worker
    $ chmod +x make_dir.sh && ./make_dir.sh
    $ docker-compose up
