#!/bin/bash

##instalar docker:  https://docs.docker.com/engine/install/ubuntu/ (ubuntu)
#desinstala paquetes en conflicto

for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done


#configura el repositorio docker:


# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc


# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update










#instala el paquete docker:


sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin


#verificó la instalación correcta:


sudo docker run hello-world


#agrego al usuario al grupo docker
sudo usermod -a -G docker $(whoami)


exit logout
vagrant halt


#consulto que haya sido agregada al grupo docker
 groups yusmelis
 
 cd UTN-FRA_SO_Examenes/
 ls -la
 cd 202406
  ls -la
 cd docker
 ls -la
 vim index.html
 cd
 git clone https://github.com/upszot/UTN-FRA_SO_Docker.git
 ls -la
 cd UTN-FRA_SO_Docker/
 ls -la
  cd ejemplo2
 ls -la


#copio el contenido el ejemplo del repositorio en la carpeta de trabajo
enes/202406/docker
 cp -rn /home/yusmelis/UTN-FRA_SO_Docker/ejemplo2/* /home/yusmelis/UTN-FRA_SO_Examenes/202406/docker


 cd
 cd /home/yusmelis/UTN-FRA_SO_Examenes/202406/docker
 ls -la
 cd static-html-directory/
 ls -la
 vim index.html
 rm -r index.html
 ls -la
 mv /home/yusmelis/UTN-FRA_SO_Examenes/202406/docker/index.html /home/yusmelis/UTN-FRA_SO_Examenes/202406/docker/static-html-directory/
 ls -la
 
#edito la imagen que quiero
vim index.html
 cd
 ls -la
 cd 


# intentamos construit  la imagen pero hay que extender los lvs por espacio
 sudo system ctl status docker
 sudo systemctl status docker
 docker build -t some-content-nginx
 sudo docker build -t rangelyusmelis/web1-rangel .


#extendemos los LV
 cd
 df -h
 sudo vgs
 yusmelis@VMY:~$ sudo lvextend -L +250M /dev/mapper/vg_datos-lv_docker
 sudo lvextend -L +500M /dev/mapper/vg_datos-lv_docker
 sudo resize2fs /dev/mapper/vg_datos-lv_docker
 sudo vim etc/fstab
 echo "/dev/vg_datos/lv_docker /var/lib/docker ext4 defaults 0 0" | sudo tee -a 


#contruimos con mas espacio libre la imagen desde el docker file por eso el . indica que esta en el directorio actual 
 sudo docker build -t rangelyusmelis/web1-rangel .
 docker login -u rangelyusmelis
 docker push rangelyusmelis/web1-rangel
 docker image list
#ejecuto la imagen en el contenedor 
 docker run -d -p 8080:80 rangelyusmelis/web1-rangel


#realiza la solicuts para el servidor del puerto  8080 para ver  si corre correctamente
curl http://localhost:8080



