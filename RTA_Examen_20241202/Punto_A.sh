
#!/bin/bash 
#Punto A


#veo los discos que tengo para particionar:


sudo fdisk -l


#Particiono disco sdd
 sudo fdisk /dev/sdd
n
p






t
8E
p # para mostrar la tabla


#Particiono disco sdf
 sudo fdisk /dev/sdf
n
p




+512M
t
8E


n
p






t
8E


#veo las particiones realizadas
 lsblk
 sudo fdisk -l




#limpio las particiones
sudo wipefs -a /dev/sdd1 /dev/sdf1 /dev/sdf2


#creo los volúmenes fisicos
sudo pvcreate /dev/sdd1 /dev/sdf1 /dev/sdf2
sudo pvs


#creo los grupos de volumnes
 sudo vgcreate vg_datos /dev/sdd1
 sudo vgcreate vg_datos /dev/sdf1 /dev/sdf2
 sudo vgcreate vg_temp /dev/sdf1 /dev/sdf2




 sudo pvs
 sudo vgs


#creo los LVS:


 sudo lvcreate -L 5M vg_datos -n lv_docker
 sudo lvcreate -L 1.5G vg_datos -n lv_workareas
 sudo lvcreate -L 512M vg_temp -n lv_swap
 sudo lvs
 sudo vgs
 sudo fdisk -l


#preparamos la particion para ser usado como memoria virtual
 sudo mkswap /dev/mapper/vg_temp-lv_swap


#activamos intercambio
sudo swapon /dev/mapper/vg_temp-lv_swap
 swapon -s
 free -h


#damos formato a los lv

sudo mkfs -t ext4 /dev/mapper/vg_datos-lv_docker
 sudo mkfs -t ext4 /dev/mapper/vg_datos-lv_workareas
 sudo lsblk -f



#busco la carpeta de montaje de docker a ver si esta


 cd /var
 ls - a
 cd lib
 ls -la


 #monto los volumenes logicos:


 lsblk
 sudo fdisk -l
 sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker
 cd
 sudo ls -l /work


# la de work no esta hay que crearla
 sudo mkdir -p /work
 sudo mount /dev/mapper/vg_datos-lv_workareas /work
 df -h


Hacemos el montaje persistente
 cat /etc/fstab
 echo "/dev/vg_datos/lv_docker /var/lib/docker ext4 defaults 0 0" | sudo tee -a /etc/fstab
 echo "/dev/vg_datos/lv_workareas /work ext4 defaults 0 0" | sudo tee -a /etc/fstab
 echo "/dev/vg_temp/lv_swap swap swap defaults 0 0" | sudo tee -a /etc/fstab
 cat /etc/fstab
 sudo vim /etc/fstab





