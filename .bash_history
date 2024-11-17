pwd
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
ls -l
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source ~/.bashrc
lsdlk
sudo apt update
lsdlk
lsblk
sudo fdisk -l
sudo fdisk /dev/sdd
sudo fdisk /dev/sdc
sudo pvcreate /dev/sdd1
sudo pvcreate /dev/sdc1
sudo vgcreate vg_datos /dev/sdd1 /dev/sdc1
sudo vgdisplay
sudo lvcreate -L 5M -n lv_docker vg_datos
sudo lvcreate -L 1.5G -n lv_workareas vg_datos
sudo vgcreate vg_temp /dev/sdc1
sudo lvdisplay
sudo lvremove /dev/vg_datos/lv_docker
sudo lvremove /dev/vg_datos/lv_workareas
sudo vgdisplay
sudo vgremove vg_datos
sudo vgremove vg_temp
sudo pvdisplay
sudo pvremove /dev/sdd1
sudo pvremove /dev/sdc1
sudo fdisk /dev/sdd
sudo fdisk /dev/sdc
lsblk
clear
sudo fdisk /dev/sdd
fdisk -l
clear
fdisk -l
lsblk
sudo fdisk -l
sudo fdisk /dev/sdd
sudo fdisk /dev/sdc
sudo lsblk
sudo pvcreate /dev/sdd1
sudo pvcreate /dev/sdc1
sudo vgcreate vg_datos /dev/sdc1
sudo vgcreate vg_temp /dev/sdd1
sudo lvcreate -L 5M -n lv_docker vg_datos
sudo lvcreate -L 1.5G -n lv_workareas vg_datos
sudo lvcreate -L 512M -n lv_swap vg_temp
sudo mkfs.ext4 /dev/vg_datos/lv_docker
sudo mkfs.ext4 /dev/vg_datos/lv_workareas
sudo mkswap /dev/vg_temp/lv_swap
sudo swapon /dev/vg_temp/lv_swap
free -h
swapon -f
sudo mkdir /var/lib/docker
sudo mkdir /work
sudo mount /dev/vg_datos/lv_docker /var/lib/docker
sudo mount /dev/vg_datos/lv_workareas /work
sudo /dev/vg_datos/lv_docker /var/lib/docker ext4 defaults 0 2
ls -l
sudo vim /etc/fstab
sudo echo '/dev/vg_datos/lv_docker /var/lib/docker ext4 defaults 0 2' >> /etc/fstab
sudo tee -a /etc/fstab << EOF
/dev/vg_datos/lv_docker /var/lib/docker ext4 defaults 0 2
/dev/vg_datos/lv_workareas /work ext4 defaults 0 2
/dev/vg_temp/lv_swap swap swap defaults 0 0
EOF

df -h
swapon -s
clear
pwd
ls -l
cd RTA_Examen_20241114/
ls -l
cd ..
exit
ls -l
cd RTA_Examen_20241114/
ls -l
tree
vim Punto_A.sh 
cat Punto_
cat Punto_A.sh
chmod +x Punto_A.sh 
cd ..
ls -l
sudo mkdir -p /usr/local/bin/Cavaliere
ls -l
cd repogit/
ls -l
cd ..
sudo ls -l
sudo ls -ld /usr/local/bin/Cavaliere
sudo vim /usr/local/bin/Cavaliere/AltaUser-Groups.sh
clear
sudo vim /usr/local/bin/Cavaliere/AltaUser-Groups.sh
clear
ls -l
sudo chmod +x /usr/local/bin/Cavaliere/AltaUser-Groups.sh 
ls -l
ls -l /home/vagrant/RTA_Examen_20241114
mkdir -p /home/vagrant/RTA_Examen_20241114/202406/bash_script
cd RTA_Examen_20241114/
ls -l
cd ..
vim /home/vagrant/RTA_Examen_20241114/202406/bash_script/Lista_Usuarios.txt
sudo /usr/local/bin/Cavaliere/AltaUser-Groups.sh vagrant /home/vagrant/RTA_Examen_20241114/202406/bash_script/Lista_Usuarios.txt
getent group
getent passwd
clear
exit
ls -l
cd RTA_Examen_20241114/
ls -l
vim Punto_B.sh 
ls -l
chmod +x Punto_B.sh 
ls -l
cd ..
git remote -v
cd RTA_Examen_20241114/
git remote -v
git remote add origin https://github.com/Santicavaliere/UTNFRA_SO_2do_Parcial_Cavaliere.git
git init
git remote add origin https://github.com/Santicavaliere/UTNFRA_SO_2do_Parcial_Cavaliere.git
git remote -v
git add Punto_A.sh Punto_B.sh 202406
git commit -m "Primer commit añado los scripts Punto_A.sh y Punto_B.sh, junto con el directorio 202406"
git config --global user.email santicavaliere@gmail
git config --global user.name Santicavaliere
git branch
git commit -m "Primer commit añado los scripts Punto_A.sh y Punto_B.sh, junto con el directorio 202406"
git branch
git push origin main
git push origin master
ssh-keygen -t ed25519 -C "santicavaliere@gmail.com"
cat ~/.ssh/id_ed25519.pub
git remote set-url origin git@github.com:Santicavaliere/UTNFRA_SO_2do_Parcial_Cavaliere.git
git remote -v
ssh -T git@github.com
git push origin master
git branch -m master main
git push -u origin main
git pull origin main --rebase
git push -u origin main
clair
clear
cd ..
exit
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
ls -l
cd RTA_Examen_20241114/
ls -l
cd ..
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
ls -l
cd bash_script/
ls -l
cat Lista_Usuarios.txt 
cd ..
ls -l
cd 202406
ls -l
cd bash_script/
ls -l
cat Lista_Usuarios.txt 
cd ..
sudo mkdir -p /usr/local/bin/Cavaliere
sudo vim /usr/local/bin/Cavaliere/AltaUser-Groups.sh
sudo chmod +x /usr/local/bin/Cavaliere/AltaUser-Groups.sh
sudo /usr/local/bin/Cavaliere/AltaUser-Groups.sh vagrant ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cd RTA_Examen_20241114/
ls -l
vim Punto_B.sh 
cat Punto_B.sh 
clear
cd ..
ls -l
cd RTA_Examen_20241114/
ls -l
git remote -v
cat 202406/
cd 202406/
ls -l
cd bash_script/
ls -l
cd ..
rm -r 202406
ls -l
git add .
git commit -m "Segundo commit"
git pull origin main --rebase
git push origin main
clear
cd ..
exit
pwd
ls -l
git clone https://github.com/Santicavaliere/UTNFRA_SO_2do_Parcial_Cavaliere.git
ls -l
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
ls -l
cd ..
ls -l
cd RTA_Examen_20241114/
cd ..
ls -l
history -a
cp -r ~/UTN-FRA_SO_Examenes/202406 ~/UTNFRA_SO_2do_Parcial_Cavaliere/
cp -r ~/RTA_Examen_20241114 ~/UTNFRA_SO_2do_Parcial_Cavaliere/
history -a
