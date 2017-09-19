# 開発環境構築用Docker Compose

1. Redmine depend on postgres  
    - port : 3000  
    - admin : cn=admin,dc=ldap,dc=example,dc=org  

2. ConcourseCI(パイプライン形式のCIツール)
    - port : 8080

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


# 手順

    $ git clone https://github.com/KunioOkita/dev_env_on_docker.git
    $ cd dev_env_on_docker
    $ chmod +x make_dir.sh && ./make_dir.sh
    $ docker-compose up
