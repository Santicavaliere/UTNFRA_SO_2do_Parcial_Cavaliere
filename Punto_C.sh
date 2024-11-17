#!/bin/bash

# Usé el cat <<EOF para crear el archivo index.html porque era más práctico que entrar a vim
cat <<EOF > ~/UTN-FRA_SO_Examenes/202406/docker/index.html
<div>
<h1> Sistemas Operativos - UTNFRA </h1></br>
<h2> 2do Parcial - Noviembre 2024 </h2> </br>
<h3> Santiago Cavaliere</h3>
<h3> División: 311</h3>
</div>
EOF

# Ruta completa al directorio donde se encuentra el Dockerfile
dockerfile_path="/home/santicavaliere/UTN-FRA_SO_Examenes/202406/docker"

# Construye la imagen desde el directorio del Dockerfile
sudo docker build -t web1-cavaliere $dockerfile_path

sudo docker images
# Agrego el usuario actual al grupo Docker porque sino luego voy a tener fallas
sudo usermod -aG docker santicavaliere

# Uso este comando para evitar salir de ssh
newgrp docker

sudo docker login -u santicavaliere
dckr_pat_WVapcEDhmJ7EIWG2R-fugwknVeM

docker tag web1-cavaliere santicavaliere/web1:latest

docker images

docker push santicavaliere/web1:latest

cat <<EOF > run.sh
#!/bin/bash

docker run -d -p 8080:80 santicavaliere/web1:latest
EOF

sudo chmod +x run.sh
sudo ./run.sh
docker ps
curl http://localhost:8080

