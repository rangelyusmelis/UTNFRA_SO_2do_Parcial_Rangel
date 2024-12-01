#!/bin/bash


sudo fdisk -l

#particionamos los discos
sudo fdisk /dev/sdc

sudo fdisk /dev/sdd
lsblk
free -h
#limpiamos las particiones
sudo wipefs -a /dev/sdc1 /dev/sdd1 /dev/sdd2
cd
lsblk
#creo los volumenes fisicos
sudo pvcreate /dev/sdc1 /dev/sdd1 /dev/sdd2
sudo pvs

#creo los grupos
sudo vgcreate vg_datos /dev/sdc1
sudo vgcreate vg_datos /dev/sdd1 /dev/sdd2
sudo vgcreate vg_temp /dev/sdd1 /dev/sdd2
sudo pvs
sudo vgs

#creo los volumnes logicos:
sudo lvcreate -L 5M vg_datos -n lv_docker
sudo lvcreate -L 1.5G vg_datos -n lv_workareas
sudo lvcreate -L 512M vg_temp -n lv_swap
sudo lvs
sudo vgs
sudo fdisk -l

#doy formato para la memoria swap

sudo mkswap /dev/mapper/vg_temp-lv_swap

#la monto
sudo swapon /dev/mapper/vg_temp-lv_swap
swapon -s
free -h

#doy formato a los volumenes logicos:
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
sudo mount /home/vagrant/foo
mount | grep foo

#hago el montaje persistente
cat /etc/fstab
lsblk
echo "/dev/vg_datos/lv_docker /var/lib/docker ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/vg_datos/lv_workareas /work ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/vg_temp/lv_swap swap swap defaults 0 0" | sudo tee -a /etc/fstab
sudo fdisk -l
cat /etc/fstab
sudo vim /etc/fstab
sudo systemctl restart docker

-- INSERT --                                             
