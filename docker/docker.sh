    2  apt-get install docker.io -y
    3  apt-get update
    4  apt-get install docker.io -y
    5  systemctl status docker
    6  docker run hello-world
    7  docker images
    8  top
    9  docker --version
   10  vi /etc/ssh/sshd_config
   11  useradd israrul
   12  su - israrul
   13  mkdir /home/israrul
   14  vi /etc/passwd
   15  ls -ld /home/israrul
   16  chown israrul:israrul /home/israrul
   17  su - israrul
   18  vi /etc/group
   19  passwd israrul
   20  su - israrul
   
docker ps -a
docker ps | grep 5c2663daa2a5
docker ps
docker exec 220cd16e6972 /bin/bash
docker exec -it 220cd16e6972 /bin/bash
docker exec -it fd19eb8fb76f /bin/bash
docker ps
docker stop fbd7a9307489
docker ps
docker ps -a | grep fbd7a9307489
docker ps
docker kill 220cd16e6972
docker ps
docker ps -a | grep 220cd16e6972
docker ps -a | tail
docker rm 0021b1d60654
docker ps -a | grep 0021b1d60654
docker images
docker rmi bf756fb1ae6 
   
docker exec -it fd19eb8fb76f /bin/bash
docker ps
docker stop fbd7a9307489
docker ps
docker ps -a | grep fbd7a9307489
docker ps
docker kill 220cd16e6972
docker ps
docker ps -a | grep 220cd16e6972
docker ps -a | tail
docker rm 0021b1d60654
docker ps -a | grep 0021b1d60654
docker images
docker rmi bf756fb1ae65
man docker
docker ps --help
history
docker ps
docker run -it -d ubuntu
docker ps
docker run -it --name israrul -d ubuntu
docker ps
clear
docker images
docker run -it -d ubuntu /bin/bash
docker run -it -d ubuntu /bin/bash --name israrul2
docker ps
docker run -it -d ubuntu --name israrul2
docker run -it --name israrul2 -d ubuntu:latest
docker ps
docker exec -it israrul2 /bin/bash
docker ps
docker commit israrul2 hisrarul/israrul2
docker images
docker login
docker push hisrarul/israrul2


############# 12th May 2020 ###############
 pwd
 vi Dockerfile
 cat Dockerfile
 docker build .
 > Dockerfile

 vi Dockerfile
 FROM ubuntu:latest
 ARG DEBIAN_FRONTEND=noninteractive
 RUN apt-get update
 RUN apt-get install apache2 -y
 ENV Name=Apacheserver
 CMD apachectl -D FOREGROUND

 docker build .
 docker images
 
 docker tag c41b74275aca hisrarul/israrul:v4
 docker images
 printenv
 vi Dockerfile
 docker build -t israrul:v5 .
 docker images

 docker run -it israrul:v5 env
 cat Dockerfile
 docker build hisrarul/israrul:v5 .
 
 docker build -t hisrarul/israrul:v6 .
 docker run -p 8080:80 --name apache2 -tid hisrarul/israrul:v6
 docker ps
 curl http://localhost:8080
 
 git clone https://github.com/hisrarul/history.git
 cd history/docker
 curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
 chmod +x /usr/local/bin/docker-compose
 ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
 docker-compose --version
 
 docker-compose build
 docker-compose up
