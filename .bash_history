ansible --version
docker --version
sudo fdisk -l
sudo fdisk /dev/sdd
sudo fdisk /dev/sdf
lsblk
fdisk -l
sudo fdisk -l
[200~sudo wipefs -a /dev/sdc1 /dev/sdd1 /dev/sdd2
sudo wipefs -a /dev/sdd1 /dev/sdf1 /dev/sdf2
sudo pvcreate /dev/sdd1 /dev/sdf1 /dev/sdf2
sudo pvs
sudo vgcreate vg_datos /dev/sdd1
sudo vgcreate vg_datos /dev/sdf1 /dev/sdf2
sudo vgcreate vg_temp /dev/sdf1 /dev/sdf2
sudo pvs
sudo vgs
sudo lvcreate -L 5M vg_datos -n lv_docker
sudo lvcreate -L 1.5G vg_datos -n lv_workareas
sudo lvcreate -L 512M vg_temp -n lv_swap
sudo lvs
sudo vgs
sudo fdisk -l
sudo mkswap /dev/mapper/vg_temp-lv_swap
sudo swapon /dev/mapper/vg_temp-lv_swap
swapon -s
free -h
sudo mkfs -t ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs -t ext4 /dev/mapper/vg_datos-lv_workareas
sudo lsblk -f
ls -l /var/lib/docker
cd
cd /var
ls - a
cd lib
ls -la
#monto los volumenes:
lsblk
sudo fdisk -l
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker
cd
sudo ls -l /work
sudo mkdir -p /work
sudo mount /dev/mapper/vg_datos-lv_workareas /work
df -h
cat /etc/fstab
df -g
df -h
cat /etc/fstab
sudo mount /home/vagrant/repogit
mount| greep repogit
mount| grep repogit
cat /etc/fstab
echo "/dev/vg_datos/lv_docker /var/lib/docker ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/vg_datos/lv_workareas /work ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/vg_temp/lv_swap swap swap defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/vg_datos/lv_docker /var/lib/docker ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/vg_datos/lv_workareas /work ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/vg_temp/lv_swap swap swap defaults 0 0" | sudo tee -a /etc/fstab
cat /etc/fstab
sudo vim /etc/fstab
sudo systemctl restart docker
logout
echo #!/bin/bash >> /usr/local/bin/RangelAltaUser-Groups.sh
ls -la
cd  /usr/local/bin/
ls -la
vim RangelAltaUser-Groups.sh
sudo vim RangelAltaUser-Groups.sh
ls -la
logout
ls -la
fdisk -l
sudo fdisk -l
df -h
lsblk
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
la -la
mkdir repogit
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
~/.bashrc  && history -a
sudo ~/.bashrc  && history -a
cd /usr/local/bin/
ls -la
cp RangelAltaUser-Groups.sh /home/yusmelis/repogit
cd
ls -la
cd repogit
ls -la
vim RangelAltaUser-Groups.sh 
vagrant halt
logout
ls -l
cd repogit
ls -l
cat RangelAltaUser-Groups.sh 
cd 
cd RTA_Examen_20241202/
ls -l
ls -la
vim Punto_B.sh
./Punto_B.sh
sudo ./Punto_B.sh
sudo chmod 764 Punto_B.sh
sudo ./Punto_B.sh
vim Punto_B.sh
sudo ./Punto_B.sh
vim Punto_B.sh
sudo ./Punto_B.sh
vim Punto_B.sh
sudo ./Punto_B.sh
vim Punto_B.sh
sudo ./Punto_B.sh
cat /etc/passwd
vim Punto_B.sh
sudo ./Punto_B.sh
vim Punto_B.sh
cd
cat Punto_B.sh
sudo cat /etc/passwd
cat /etc/group
sudo useradd -m -s /bin/bash -c \"Usuariodos\" -p \"$(sudo grep UsuarioUno /etc/shadow | awk -F':' '{print \$2}')\" -G Grupo2 UsuarioDOS
sudo useradd -m -s /bin/bash -c "Usuariodos" -p "$(sudo grep UsuarioUno /etc/shadow | awk -F':' '{print $2}')" -G Grupo2 UsuarioDOS
cat /etc/group
ls -la
cd rep
cd repogit/
ls -la
vim RangelAltaUser-Groups.sh 
cdR
cd Rta
cd
cd RTA_Examen_20241202/
ls -a
vim Punto_B.sh 
d
cd
grep docker /etc/group
groups yusmelis
whoami
sudo usermod -a -G docker $(whoami)
logout
sudo ./Punto_B.sh
exit
ls  -la
cd RTA_Examen_20241202/
ls -la
cd
cd repogit
ls -la
cd
cd UTN-FRA_SO_Examenes/
ls -la
cd 2024
cd 202406
ls .la
ls -la
cd docker
ls -la
vim index.html 
cd
git clone https://github.com/upszot/UTN-FRA_SO_Docker.git
ls -la
cd UTN-FRA_SO_Docker/
ls -la
cd ejemplo
cd ejemplo2
ls -la
cp /home/yusmelis/UTN-FRA_SO_Docker/ejemplo2/*  /home/yusmelis/UTN-FRA_SO_Examenes/202406/docker 
cp -rn /home/yusmelis/UTN-FRA_SO_Docker/ejemplo2/*  /home/yusmelis/UTN-FRA_SO_Examenes/202406/docker 
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
vim index.html 
cd
ls -la
cd RTA_Examen_20241202/
ls -la
cd
cd UTN-FRA_SO_
cd UTN-FRA_SO_Examenes/
ls -la
cd 202406
ls -la
cd docker
ls -la
sudo system ctl status docker
sudo systemctl status docker
docker build -t some-content-nginx
sudo docker build -t rangelyusmelis/web1-Rangel
sudo docker build -t rangelyusmelis/web1-Rangel.
sudo docker build -t rangelyusmelis/web1-Rangel .
sudo docker build -t rangelyusmelis/web1-rangel .
cd ..
cd
df -h
sudo vgs
sudo lvextend -L +500M
sudo lv extend -L +500M
sudo lv_docker extend -L +250M
sudo lv_extend -L +250M /dev/mapper/vg_datos-lv_docker  
sudo lv_extend -L +250M /dev/vg_datos/lv_docker  
yusmelis@VMY:~$ sudo lvextend -L +250M /dev/mapper/vg_datos-lv_docker
sudo lvextend -L +250M /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker
sudo vim etc/fstab
echo "/dev/vg_datos/lv_docker /var/lib/docker ext4 defaults 0 0" | sudo tee -a /etc/fstab
sudo docker build -t rangelyusmelis/web1-rangel .
ls -la
cd UTN-FRA_SO_Examenes/
ls -la
cd 202406
ls -la
cd docker
ls -la
sudo docker build -t rangelyusmelis/web1-rangel .
docker system prune -a --volumes
sudo lvextend -L +250M /dev/mapper/vg_datos-lv_docker
vgs
sudo vgs
sudo lvextend -L +245M /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker
echo "/dev/vg_datos/lv_docker /var/lib/docker ext4 defaults 0 0" | sudo tee -a /etc/fstab
sudo docker build -t rangelyusmelis/web1-rangel .
docker login -u rangelyusmelis
docker push rangelyusmelis/web1-rangel
docker image list
docker run -d -p 8080:80 rangelyusmelis/web1-rangel
curl localhost: 8080
curl http://localhost:8080
cd
la -la
cd UTN-FRA_SO_Examenes/
ls -la
cd 202406
ls -la
cd ansible
la -la
mkdir -p /temp/2do_parcial/{alumno,equipo}
sudo mkdir -p /temp/2do_parcial/{alumno,equipo}
tree /temp/2do_parcial
sudo apt  install tree  # version 2.0.2-1
rm -r /temp/2do_parcial/
sudo rm -r /temp/2do_parcial/
ls -la
cd
ssh-keygen -t ed25519
pwd
ls -la
cd .ssh
ls -la
cat id_ed25519
cat id_ed25519 >> autorized_key
ifconfog
ifconfig
sudo apt install net-tools
ifconfig
cd
ssh vagrant@10.0.2.15
ld -ls
ls -la
cd UTN-FRA_SO_
cd UTN-FRA_SO_Examenes/
ls -la
cd 202406
ls -la
cd ansible
ls -la
cat inventory
cd inventory
ls -la
cat host
cd hots
cd
git clone https://github.com/upszot/UTN-FRA_SO_Ansible.git
ls -la
cd UTN-FRA_SO_Ansible/
ls -la
xs ejemplo_0
xs ejemplo_04
cd ejemplo_04
ls -la
cd roles
ls -la
cat role_01
cd role_01
la 
ls -la
cd
ls -la
cd UTN-FRA_SO_Ansible/
ls -la
cd ejemplo_03
ls -la
cd role_ejemplo1/
ls -la
cat ansible.cfg 
cd tasks/
ls -la
cs main.yml 
cd
cd ansible
ls -la
cd .ansible
la -la
cd
cd RTA_Examen_20241202/
ls -la
cd
cd ansible
xs
cd
git commit https://github.com/upszot/UTN-FRA_SO_Ansible.git
ls -la3
ls -la
cd ansible
cd .ansible
ls -la
cd
rm -r .ansible
ls -la
git clone https://github.com/upszot/UTN-FRA_SO_Ansible.git
d UTN-FRA_SO_
d UTN-FRA_SO_Ansible/
cd UTN-FRA_SO_Ansible/
ls -la
cd playbook_pruebas/
ls -la
cat playbook.yml
cd
cd UTN-FRA_SO_Ansible/
cd ejemplo_02
cat playbook.yml 
cat ansible.cfg 
cd 
ls -la
cd UTN-FRA_SO_
cd UTN-FRA_SO_Ansible/
ls -la
cd playbook_pruebas/
ls -la
cd
cd UTN-FRA_SO_Ex
cd UTN-FRA_SO_Examenes/
cd 202406
ls -la
cd ansible/
ls -la
cat inventory
cd inventory
ls -la
cat hosts
cd
cat playbook.yml
ls -la
cd UTN-FRA_SO_Examenes/
cd 202406
ls -la
cd ansible/
ls -la
cat playbook.yml 
vim playbook.yml 
cd roles
ls -la
2do_pa
2do_parcial/
vim 2do_parcial
cd
vim 2do_pcd ansible
cd ansible
ls -la
cd UTN-FRA_SO_Ansible/
cd
cd UTN-FRA_SO_Ansible/
ls -la
ejemplo_03
cd ejemplo_03
LS -LA
LS -la
ls-la
ls -la
cd role_ejemplo1/
ls -la
cp /UTN-FRA_SO_Ansible/ejemplo_03/role_ejemplo1* /UTN-FRA_SO_Examenes/202406/ansible/roles
cp /UTN-FRA_SO_Ansible/ejemplo_03/role_ejemplo1 /UTN-FRA_SO_Examenes/202406/ansible/roles
cd
cp /UTN-FRA_SO_Ansible/ejemplo_03/role_ejemplo1* /UTN-FRA_SO_Examenes/202406/ansible/roles
cd UTN-FRA_SO_Ansible/
ls -la
cd ejemplo 04
cd ejemplo_04
ls -la
cd roles
ls -la
cd role_01
ls -la
cat ansible.cfg
cat tasks
cp /home/yusmelis//UTN-FRA_SO_Ansible/ejemplo_04/roles/role_01* UTN-FRA_SO_Examenes/202406/ansible/roles
cp /home/yusmelis//UTN-FRA_SO_Ansible/ejemplo_04/roles/role_01* /home/yusmelis/UTN-FRA_SO_Examenes/202406/ansible/roles
cp -r /home/yusmelis//UTN-FRA_SO_Ansible/ejemplo_04/roles/role_01* /home/yusmelis/UTN-FRA_SO_Examenes/202406/ansible/roles
cd /home/yusmelis/UTN-FRA_SO_Examenes/202406/ansible/roles
ls -la
cd role_01
ls -la
cd tasks
ls -la
cd
cd/UTN-FRA_SO_Examenes/202406/ansible/
cd /UTN-FRA_SO_Examenes/202406/ansible/
cd /UTN-FRA_SO_Examenes/202406/ansible
cd UTN-FRA_SO_Examenes/
ls -la
cd 202406
ls -la
cd ansible
ls -la
vim playbook.yml
cd role
cd roles
ls -la
role_01
cd role_01
ls -la
vim tasks/
ls-la
ls -la
cd tasks
ls -la
vim main.yml 
vim /UTN-FRA_SO_Examenes/202406/ansible$ vim playbook.yml
cat /home/yusmelis//UTN-FRA_SO_Examenes/202406/ansible$ vim playbook.yml >> /home/yusmelis/UTN-FRA_SO_Examenes/202406/ansible/roles/role_01/tasks
cat /home/yusmelis//UTN-FRA_SO_Examenes/202406/ansible$ vim playbook.yml >> /home/yusmelis/UTN-FRA_SO_Examenes/202406/ansible/roles/role_01/tasks/main.yml
cat /home/yusmelis//UTN-FRA_SO_Examenes/202406/ansible/playbook.yml >> /home/yusmelis/UTN-FRA_SO_Examenes/202406/ansible/roles/role_01/tasks/main.yml
vim main.yml 
ls -la
cd..
cd ..
ls -la
cd ..
ls -la
cat role_01 > role_02.sh
cp -r role_01  role_02_copia
ls -la
rm -r role_02.sh
cd role_02_copia/
ls -la
vim tasks
cd tasks
ls -la
vim main.yml
cd
ls -la
cd UTN-FRA_SO_Examenes/202406/ansible/roles/
ls -la
rm -r role_02_copia
cd role_ 01
role_01
cd role_01
ls -la
cd tasks
cat main.yml 
cd
cd /UTN-FRA_SO_Examenes/202406/ansible/roles/role_01/tasks
cd /UTN-FRA_SO_Examenes/202406/ansible/roles/role_01/tasks/
cd UTN-FRA_SO_Examenes/
cd 202406
cd ansible/
cd /role
ls -la
cd role
cd roles/
ls -la
cd 2do_parcial/
ls -la
tasks
cd tasks
ls .la
ls -la
vim main.yml 
cat /home/yusmelis/UTN-FRA_SO_Examenes/202406/ansible/roles/role_01/tasks/main.yml
cat /home/yusmelis/UTN-FRA_SO_Examenes/202406/ansible/roles/role_01/tasks/main.yml >> /home/yusmelis/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/tasks/main.yml
vim main.yml 
cd
cd /UTN-FRA_SO_Examenes/202406/ansible/roles/
cd /UTN-FRA_SO_Examenes/202406/ansible/roles
cd /UTN-FRA_SO_Examenes/202406/ansible
ls -la
cd UTN-FRA_SO_Examenes/
ls -la
cd 202406
ls .
ls -la
cd ansible
ls -la
vim playbook.yml 
cat inventory
cd inventory
cat inventory
ls -la
cat host
cat hosts
vim hosts
cd ..
ls -la
ansible-playbook -i inventory playbook.yml
vim playbook.yml 
ansible-playbook -i inventory playbook.yml
vim inven
cd inventory
ls -la
cd host_vars/
ls -la
cd..
ls -la
cd ..
ls .la
la -la
vim hosts
ansible-playbook -i inventory playbook.yml
cd
cd UTN-FRA_SO_Examenes/202406
cd ansible/
ls -la
ansible-playbook -i inventory playbook.yml
cd hosts
ls -la
cdin
cd inventory/
ls -la
vim hosts
cd ..
ansible-playbook -i inventory playbook.yml
sudo ansible-playbook -i inventory playbook.yml
ls /home/yusmelis/UTN-FRA_SO_Examenes/202406/ansible/tmp/2do_parcial/alumno/alumno.txt
cat /home/yusmelis/UTN-FRA_SO_Examenes/202406/ansible/tmp/2do_parcial/alumno/alumno.txt
ls /home/yusmelis/UTN-FRA_SO_Examenes/202406/ansible/tmp/2do_parcial/alumno/alumno.txt
getent group 2PSupervisores
cd inventory/
ls -la
vim hosts
cd..
vd ..
cd ..
ansible-playbook -i inventory playbook.yml
cd inventory
ls -la
cd host_vars/
cd..
cd ..
vim hosts
cd
vagrant@192.168.56.3
ssh vagrant@192.168.56.3
ls -la
cd UTN-FRA_SO_Ansible/
ls -la
xs
cd
cd UTN-FRA_SO_E
cd UTN-FRA_SO_Examenes/
ls -la
cd 202406
ls -la
cd ansible
cd inventory
cat hosts
ifconfig
vim hosts
ls -la
host_vars/
cd host_vars/
ls -la
vim 127.0.0.1.yml 
vim localhost.yml 
cd
ls -la
cd UTN-FRA_SO_Examenes/
cd ansible
cd 202406
ls -la
cd ansible/
ls-la
ls -la
cd inventory/
ls -la
cd group_vars/
ls -la
vim testing.yml 
vim produccion.yml 
cd ..
ansible-playbook -i inventory playbook.yml
sudo ansible-playbook -i inventory playbook.yml
cd
cd RTA_Examen_20241202/
ls -la
history>> historial.txt
history | awk {1$="";{1$=""; print$=0}
history | awk '{$1=""; print $0}' >historial.txt
ls la
ls -la
vim historial.txt 
vim Punto_A
vim Punto_A.sh 
vim historial.txt 
vim Punto_A.sh 
chmod +x Punto_A.sh 
ls -la
vim Punto_B.sh 
vim historial.txt 
cd..
cd
cd UTN-FRA_SO_Examenes/
cd 202406
ls -la
cd docker/
ls .la
ls -la
cd static-html-directory/
ls -la
cd
cd RTA_Examen_20241202/
vim historial.txt 
cd
cd RTA_Examen_20241202/
ls -la
vim Punto_C.sh 
chmod +x Punto_C.sh 
ls -la
cd
cd UTN-FRA_SO_Examenes/202406/docker
ls -la
cd static-html-directory/
ls -la
vim index.html 
cd
cd RTA_Examen_20241202/
ls -la
vim Punto_C.sh 
vi historial.txt 
cd
cd UTN-FRA_SO_Examenes/202406/ansible
ls -la
vim playbook.yml 
cd role
cd roles
ls .la
ls -la
cat 2do_parcial/
cd 2do_parcial/
ls -la
cd tasks/
ls -la
cat main.yml
# Archivo main.yml para el rol 2do_parcial
- name: Crear carpeta principal y estructura anidada
- name: Crear archivo alumno.txt con contenido
- name: Crear archivo equipo.txt con contenido
- name: Crear grupos
- name: Crear usuario 'usuario3' con directorio home
- name: Agregar NOPASSWD para grupo '2PSupervisores' en sudoers
q!
cd
cd RTA_Examen_20241202/
vim Punto_D.sh 
vim Punto_A.sh 
vim Punto_B.sh 
vim Punto_C.sh 
cd
ssh-keygen -t ed25519 # genero la llave publica
ls -la
cd .ssh
cat id_ed25519.pub
ls -la
cat id_ed25519.pub 
cd
git clone git@github.com:rangelyusmelis/UTNFRA_SO_2do_Parcial_Rangel.git
ls -la
cp -r /home/yusmelis/UTN-FRA_SO_Examenes/202406 UTNFRA_SO_2do_Parcial_Rangel/
cp -r /home/yusmelis/RTA_Examen_20241202/  UTNFRA_SO_2do_Parcial_Rangel/
cd UTNFRA_SO_2do_Parcial_Rangel/
ls -la
cd 202406
ls -la
cd ansible
ls -la
cd roles
ls -la
xs
cd
history -a
ls -la
