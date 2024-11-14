#!/bin/bash

# Particionamiento y configuración de los discos
sudo fdisk /dev/sdd <<EOF
n
p



t
82
w
EOF
sudo fdisk /dev/sdc <<EOF
n
p



t
8e
w
EOF
sudo pvcreate /dev/sdd1
sudo pvcreate /dev/sdc1
sudo vgcreate vg_datos /dev/sdd1 /dev/sdc1
sudo vgcreate vg_temp /dev/sdd1
sudo lvcreate -L 5M -n lv_docker vg_datos
sudo lvcreate -L 1.5G -n lv_workareas vg_datos
sudo lvcreate -L 512M -n lv_swap vg_temp
sudo mkfs.ext4 /dev/vg_datos/lv_docker
sudo mkfs.ext4 /dev/vg_datos/lv_workareas
sudo mkswap /dev/vg_temp/lv_swap
sudo swapon /dev/vg_temp/lv_swap
sudo mkdir /var/lib/docker
sudo mkdir /work
sudo mount /dev/vg_datos/lv_docker /var/lib/docker
sudo mount /dev/vg_datos/lv_workareas /work
sudo tee -a /etc/fstab <<EOF > /dev/null
/dev/vg_datos/lv_docker /var/lib/docker ext4 defaults 0 2
/dev/vg_datos/lv_workareas /work ext4 defaults 0 2
/dev/vg_temp/lv_swap swap swap defaults 0 0
EOF

