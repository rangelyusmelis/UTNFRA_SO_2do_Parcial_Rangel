#!/bin/bash


#Punto D


#instalamos claves
 ssh-keygen -t ed25519
 pwd
 ls -la
 cd .ssh
 ls -la
 cat id_ed25519.pub >> autorized_key


 cd
 git clone https://github.com/upszot/UTN-FRA_SO_Ansible.git
 ls -la
 cd UTN-FRA_SO_Ansible/
 ls -la
 cd ejemplo_04
 ls -la
 cd roles
 ls -la
 cd role_01
 


 git clone https://github.com/upszot/UTN-FRA_SO_Ansible.git
 cd UTN-FRA_SO_Ansible/
ls -la
cd
 cat /home/yusmelis/UTN-FRA_SO_Examenes/202406/ansible/roles/role_01/tasks/main.yml >> /home/yusmelis/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/tasks/main.yml
                             
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
cd inventory
vim hosts
cd
cd UTN-FRA_SO_Examenes/202406/ansible                
cat playbook.ymli
cat inventory
sudo ansible-playbook -i inventory playbook.yml


 
 history | awk '{$1=""; print $0}' >historial.txt








cd /home/yusmelis /UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/tasks$
cat main.yml


######## no se ejecutaron las tareas coloque lo que escribien el archivo main aca abajo 

# Archivo main.yml para el rol 2do_parcial


- name: Crear carpeta principal y estructura anidada
  ansible.builtin.file:
    path: "{{ item }}"
    state: directory
    mode: '0755'
    owner: "{{ ansible_user }}"
    group: "{{ ansible_user }}"
  loop:
    - /home/yusmelis/UTN-FRA_SO_Examenes/202406/ansible/tmp
    - /home/yusmelis/UTN-FRA_SO_Examenes/202406/ansible/tmp/2do_parcial
    - /home/yusmelis/UTN-FRA_SO_Examenes/202406/ansible/tmp/2do_parcial/alumno
    - /home/yusmelis/UTN-FRA_SO_Examenes/202406/ansible/tmp/equipo


- name: Crear archivo alumno.txt con contenido
  ansible.builtin.copy:
    dest: /home/yusmelis/UTN-FRA_SO_Examenes/202406/ansible/tmp/2do_parcial/alumno/alumno.txt
    content: |
      Nombre: Yusmelis
      Apellido: Rangel
      División: 311.


- name: Crear archivo equipo.txt con contenido
  ansible.builtin.copy:
    dest: /home/yusmelis/UTN-FRA_SO_Examenes/202406/ansible/tmp/2do_parcial/equipo/equipo.txt
    content: |
      ip: 192.168.56.3
      distribución: Linux - Debian
      cantidad de cores: 4


- name: Crear grupos
  ansible.builtin.group:
    name: "{{ item }}"
    state: present
  loop:
    - 2PSupervisores




- name: Crear usuario 'usuario3' con directorio home
  ansible.builtin.user:
    name: usuario3
    create_home: yes
    groups: 2PSupervisores


- name: Agregar NOPASSWD para grupo '2PSupervisores' en sudoers
  ansible.builtin.lineinfile:
    path: /etc/sudoers.d/2PSupervisores
    state: present
    line: '%2PSupervisores ALL=(ALL) NOPASSWD: ALL'
    validate: 'visudo -cf %s'


