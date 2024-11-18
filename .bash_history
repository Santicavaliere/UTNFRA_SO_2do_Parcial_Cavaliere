ls -l
exit
ls -l
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
ls -l
cd docker/
ls -l
cat index.html 
vim index.html 
ls -l index.html 
sudo chown santicavaliere:santicavaliere index.html
vim index.html 
vim Dockerfile
sudo chown santicavaliere:santicavaliere Dockerfile
ls -l
vim Dockerfile
ls -l
ls -la
vim Dockerfile
cd ..
ls -l Dockerfile
cd UTN-FRA_SO_Examenes/202406/docker/
sudo vim Dockerfile
sudo vim index.html 
sudo vim Dockerfile
docker build -t web1-cavaliere
sudo vim index.html 
docker build -t web1-cavaliere
ls -l
docker build -t web1-cavaliere .
sudo docker build -t web1-cavaliere .
docker images
sudo docker images
docker ps -a
sudo docker ps -a
sudo docker container prune
sudo docker images
sudo docker image prune -a
sudo docker volume ls
sudo docker volume prune
sudo docker builder prune
sudo docker system prune -a --volumes
sudo docker build -t web1-cavaliere .
sudo systemctl stop docker
sudo mv /var/lib/docker /mnt/docker
sudo systemctl stop docker
sudo systemctl status docker
cd ..
exit
sudo umount /var/lib/docker
sudo umount /work
sudo swapoff /dev/vg_temp/lv_swap
sudo sed -i '/vg_datos/d' /etc/fstab
sudo sed -i '/vg_temp/d' /etc/fstab
sudo lvremove -f /dev/vg_datos/lv_docker
sudo lvremove -f /dev/vg_datos/lv_workareas
sudo lvremove -f /dev/vg_temp/ls_swap
sudo lvremove -f /dev/vg_temp/lv_swap
sudo vgremove vg_datos
sudo vgremove vg_temp
sudo pvremove /dev/sdd1
sudo pvremove /dev/sdc1
fdisk
sudo fdisk
sudo pvcreate /dev/sdd1
sudo pvcreate /dev/sdc1
sudo vgcreate vg_datos /dev/sdd1 /dev/sdc1
sudo vgcreate vg_temp /dev/sdd1
sudo umount /var/lib/docker
sudo pvremove /dev/sdd1
sudo lvremove -f /dev/vg_datos/lv_docker
sudo vgremove vg_datos
sudo vgremove vg_temp
sudo pvremove /dev/sdd1
sudo pvremove /dev/sdc1
clare
claire
sudo lsblk
sudo pvcreate /dev/sdc1
sudo pvcreate /dev/sdd1
sudo vgcreate vg_datos /dev/sdc1 
sudo vgcreate vg_temp /dev/sdd1 
sudo lvcreate -L 500M -n lv_docker vg_datos
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
sudo tee -a /etc/fstab << EOF > /dev/null
/dev/vg_datos/lv_docker /var/lib/docker ext4 defaults 0 2
/dev/vg_datos/lv_workareas /work ext4 defaults 0 2
/dev/vg_temp/lv_swap swap swap defaults 0 0
EOF

clear
ls -l
cd UTN-FRA_SO_Examenes/
cd 202406
cd docker/
ls -l
docker build -t web1-cavaliere .
sudo docker build -t web1-cavaliere .
sudo docker images
sudo docker login -u santicavaliere
sudo docker tag web1-cavaliere santiagocavaliere/web1-cavaliere:latest
sudo docker push santiagocavaliere/web1-cavaliere:latest
docker logout
docker login -u santicavaliere
docker push santiagocavaliere/web1-cavaliere:latest
sudo docker push santiagocavaliere/web1-cavaliere:latest
cat /etc/group | grep docker
sudo usermod -aG docker santicavaliere
cd ..
exit
pip3 install git-filter-repo
sudo pip3 install git-filter-repo
git filter-repo --replace-text <(echo "dckr_pat_WVapcEDhmJ7EIWG2R-fugwknVeM==>REMOVED")
sudo apt update
sudo apt install python3-pip -y
pip3 --version
pip3 install git-filter-repo
git filter-repo --help
pip3 show git-filter-repo | grep Location
export PATH=$PATH:/home/santicavaliere/.local/bin
echo 'export PATH=$PATH:/home/santicavaliere/.local/bin' >> ~/.bashrc
source ~/.bashrc
git filter-repo --replace-text <(echo "dckr_pat_WVapcEDhmJ7EIWG2R-fugwknVeM==>REMOVED")
git push --force
git log -S "dckr_pat_WVapcEDhmJ7EIWG2R-fugwknVeM" --all
git show df1482a1c8b6736556025fcc6fde93c5b6ae3c4f
git filter-repo --replace-text <(echo "dckr_pat_WVapcEDhmJ7EIWG2R-fugwknVeM==>REMOVED")
rm -rf .git/refs/original/
rm -rf .git/logs/
git reflog expire --expire=now --all
git gc --prune=now --aggressive
git log -S "dckr_pat_WVapcEDhmJ7EIWG2R-fugwknVeM" --all
git push --force
cd ..
exit
sudo vim Punto_C.sh 
clear
cd ..
ls -l
cd UTNFRA_SO_2do_Parcial_Cavaliere/
ls -l
cd RTA_Examen_20241114/
ls -l
cd ..
sudo vim Punto_C.sh
sudo chmod +x Punto_C.sh 
ls -l
git add .
clear
ls -l
git add .
git config --global --add safe.directory /home/santicavaliere/UTNFRA_SO_2do_Parcial_Cavaliere
git add .
sudo chown -R santicavaliere:santicavaliere /home/santicavaliere/UTNFRA_SO_2do_Parcial_Cavaliere
chmod -R u+rwX /home/santicavaliere/UTNFRA_SO_2do_Parcial_Cavaliere
git add .
git commit -m "Cuarto commit, agrego Punto_C"
git config --global user.email santicavaliere@gmail.com
git config --global user.name Santicavaliere
git commit -m "Cuarto commit, agrego Punto_C"
git push -u origin main
ssh-add -l
ssh-add ~/.ssh/id_ed25519
sudo ssh-add -l
sudo ssh-add ~/.ssh/id_ed25519
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
sudo ssh-add ~/.ssh/id_ed25519
ls -l ~/.ssh/
sudo ls -l ~/.ssh/
ssh-keygen -t ed25519 -C "santicavaliere@gmail.com"
cat ~/.ssh/id_ed25519.pub
ssh -T git@github.com
git remote -v
git push -u origin main
ls -l
sudo vim Punto_C.sh 
export DOCKER_PAT=dckr_pat_WVapcEDhmJ7EIWG2R-fugwknVeM
bash Punto_C.sh
cd ..
exit
sudo vim Punto_C.sh 
cd ..
ls -l
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
ls -l
cd docker
ls -l
cd ..
ls -l
cd RTA_Examen_20241114/
ls -l
sudo vim Punto_C.sh 
Punto_C.sh
bash Punto_c.sh
bash Punto_C.sh
sudo chown santicavaliere:santicavaliere Dockerfile index.html
cd ..
cd UTN-FRA_SO_Examenes/
cd 202406
ls -l
cd docker/
sudo chown santicavaliere:santicavaliere Dockerfile index.html
ls -l
cd ..
cd RTA_Examen_20241114/
ls -l
bash Punto_C.sh 
sudo chmod +w ~/UTN-FRA_SO_Examenes/202406/docker
bash Punto_C.sh 
docker ps
cd UTN-FRA_SO_Examenes/
cd 202406
ls -l
cd docker
ls -l
docker logout
docker login -u santicavaliere
docker tag web1-cavaliere santiagocavaliere/web1-cavaliere:latest
docker push santiagocavaliere/web1-cavaliere:latest
sedu docker push santiagocavaliere/web1-cavaliere:latest
sudo docker push santiagocavaliere/web1-cavaliere:latest
docker tag web1-cavaliere santicavaliere/web1:latest
docker images
docker push santicavaliere/web1:latest
vim run.sh
sudo vim run.sh
chmod +x run.sh
sudo chmod +x run.sh
sudo ./run.sh
docker ps
curl http://localhost:8080
hostname -I
cd ..
ls -l
cd ..
ls -l
cd UTNFRA_SO_2do_Parcial_Cavaliere/
ls -l
cd ..
cd RTA_Examen_20241114/
ls -l
vim Punto_C.sh 
ls -l
sudo vim Punto_C.sh 
cat Punto_C.sh 
clear
chmod +x Punto_C.sh 
sudo chmod +x Punto_C.sh 
cd ..
~/RTA_Examen_20241114/Punto_C.sh
sudo ~/RTA_Examen_20241114/Punto_C.sh
cd RTA_Examen_20241114/
ls -l
Punto_C.sh
sudo Punto_C.sh
sudo Punto_A.sh
Punto_A.sh
CLEAR
clear
bash Punto_C.sh
sudo vim Punto_C.sh 
clear
sudo chmod +w ~/UTN-FRA_SO_Examenes/202406/docker
bash Punto_C.sh
sudo docker build -t web1-cavaliere ~/UTN-FRA_SO_Examenes/202406/docker
bash Punto_C.sh 
sudo vim Punto_C.sh 
bash Punto_C.sh 
pwd
cd Punto_C.sh
chmod x Punto_C.sh 
chmod +x Punto_C.sh 
sudo chmod +x Punto_C.sh 
bash Punto_C.sh 
vim Punto_C.sh 
sudo vim Punto_C.sh 
bash Punto_C.sh 
sudo vim Punto_C.sh 
clear
bash Punto_C.sh
exit
ls -l
clear
ls -l
cd UTNFRA_SO_2do_Parcial_Cavaliere/
ls -l
sudo vim Punto_C.sh 
git add .
git commit -m "Quinto commit, cambios en Punto_c"
git push -u origin main
git add .
git commit -m "Commit 5, cambios en Punto_C"
git pull origin main
git push -u origin main
sudo vim Punto_C.sh 
git add .
git commit -m "Commit 5 cambios en Punto_C"
git pull origin main
git push -u origin main
clear
cd ..
ls -l
cd RTA_Examen_20241114/
ls -l
cd ..
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
ls -l
cd ansible/
ls -l
cat playbook.yml 
cat README.md 
sudo apt update
sudo apt install ansible
sudo apt list --installed | grep ansible
clear
ls -l
cat README.md 
cd roles
ls -l
cd ..
cat roles/
cd roles/
cd 2do_parcial/
ls -l
cat README.md 
clear
ls -l
cd .
cd ..
ls -l
cat README.md 
cd roles/
ls -l
cd 2do_parcial/
ls -l
cd tasks/
ls -l
cat main.yml 
cd ..
cd roles/
cd ..
ls -l
cat playbook.yml 
clear
ls -l
cat README.md 
cd ..
cd 202311_Recu/ansible/
reset; ansible-playbook -i inventory/hosts playbook.yml
cd /UTN-FRA_SO_Examenes/202406/ansible
cd ..
/UTN-FRA_SO_Examenes/202406/ansible
sudo cd /UTN-FRA_SO_Examenes/202406/ansible
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
cd ..
sudo cd UTN-FRA_SO_Examenes/202406/ansible
cd UTN-FRA_SO_Examenes/202406/ansible
cd UTN-FRA_SO_Examenes/202311_Recu/ansible
cd ..
cd UTN-FRA_SO_Examenes/202311_Recu/ansible
cd ..
cd UTN-FRA_SO_Examenes/202406/ansible
clear
ls -l
mkdir -p /tmp/2do_parcial/alumno
mkdir -p /tmp/2do_parcial/equipo
ls -l
tree /tmp/2do_parcial
sudo apt install tree
tree /tmp/2do_parcial
ls -l
cd roles/
ls -l
mkdir -p /multi_Pruebas/templates
sudo mkdir -p /multi_Pruebas/templates
ls -l
cd 2do_parcial/
ls -l
cd ..
tree multi_Pruebas/templates
ls -l
sudo mkdir -p /UTN-FRA_SO_Examenes/202406/ansible/roles/multi_Pruebas/templates
ls -l
cd multi_pruebas
cd ..
ls -l
ls /UTN-FRA_SO_Examenes/202406/ansible/roles/multi_Pruebas/templates/
cd roles/
ls -l
mkdir -p multi_Pruebas/templates
sudo mkdir -p multi_Pruebas/templates
ls -l
vim datos_alumno.j2
sudo vim datos_alumno.j2
ip addr show
lsb_release -d
nproc
clear
sudo vim datos_equipo.j2
ls -l
cd multi_Pruebas/
ls -l
sudo mkdir tasks
ls -l
cd tasks/
cd ..
ls -l
cd ..
ls -l
mv datos_alumno.j2 datos_equipo.j2 multi_Pruebas/templates/
sudo mv datos_alumno.j2 datos_equipo.j2 multi_Pruebas/templates/
ls -l
cd multi_Pruebas/templates/
ls -l
sudo vim prueba_202311_Recu2doParcial.yml
tree
cd ..
tree
sudo mv templates/prueba_202311_Recu2doParcial.yml tasks/
tree
cd ..
ls -l
sudo vim playbook.yml 
ansible-playbook -i inventory/hosts playbook.yml
ls -l /tmp/2do_parcial/
cat /tmp/2do_parcial/alumno/datos_alumno.txt
cat tmp/2do_parcial/alumno/datos_alumno.txt
ls -l
cd roles/
ls -l
cd 2do_parcial/
ls -l
cd t
cd tasks/
ls -l
cat main.yml 
cd ..
exit
ls -l
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
ls -l
cs ansible/
cd ansible/
ls -l
cd roles/
ls -l
cd multi_Pruebas/
ls -l
cd templates/
ls -l
cd ..
ls -l
cat /tmp/2do_parcial/alumno/datos_alumno.txt
sudo cat /tmp/2do_parcial/alumno/datos_alumno.txt
clear
ls -l
cd multi_Pruebas/
ls -l
tree
sudo mv ~/UTN-FRA_SO_Examenes/202406/ansible/roles/multi_Pruebas/tasks/prueba_202311_Recu2doParcial.yml ~/UTN-FRA_SO_Examenes/202406/ansible/roles/multi_Pruebas/tasks/main.yml
tree
cd tasks/
sudo vim main.yml 
cd ..
cd ansible/
ls -l
sudo vim playbook.yml 
ansible-playbook playbook.yml
cat /tmp/2do_parcial/alumno/datos_alumno.txt
cat /tmp/2do_parcial/equipo/datos_equipo.txt
getent group 2PSupervisores
sudo visudo
sudo ls /root
ls -l
sudo vim configuracion_sudoers.yml
cd inventory/
ls -l
sudo vim hosts
ansible localhost -m ping
cd ..
ls -l
ansible-playbook configuracion_sudoers.yml
getent group 2PSupervisores
sudo cat /etc/sudoers.d/2PSupervisores
cd ..
ls -l
clear
ls -l
cd UTNFRA_SO_2do_Parcial_Cavaliere/
ls -l
sudo vim Punto_C.sh 
sudo vim Punto_D.sh 
git add .
git commit -m "Sexto commit, se agrega Punto_D"
git pull
git push -u origin main
cd ..
ls -l
cd RTA_Examen_20241114/
history -a
cat ~/.bash_history
clear
cd ..
history -a
ls -l
cd UTNFRA_SO_2do_Parcial_Cavaliere/
cp -r /UTN-FRA_SO_Examenes/202406 ./202406
cp -r RTA_Examen_20241114 ./RTA_Examen_20241114
rm -rf ./RTA_Examen_20241114
cp -r /path/to/RTA_Examen_20241114 ./RTA_Examen_20241114
ls -l
find / -type d -name "RTA_Examen_20241114" 2>/dev/null
cp -r /home/santicavaliere/RTA_Examen_20241114 ./RTA_Examen_20241114
ls -l
clear
cp ~/.bash_history ./
tree
clear
tree
clear
history -a
