#!/bin/bash
groupadd Grupo1
groupadd Grupo2
useradd -m -s /bin/bash -c "UsuarioUno" -G Grupo1 UsuarioUno
echo "UsuarioUno:VagrantUno" | chpasswd
su - UsuarioUno
sudo useradd -m -s /bin/bash -c \"Usuariodos\" -p \"$(sudo grep UsuarioUno /etc/shadow | awk -F':' '{print \$2}')\" -G Grupo2 UsuarioDOS

