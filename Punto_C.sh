
cat index.html

sudo vim index.html

# Contenido que se debe agregar al archivo index.html:
# <div>
# <h1> Sistemas Operativos - UTNFRA </h1></br>
# <h2> 2do Parcial - Noviembre 2024 </h2> </br>
# <h3> Santiago Cavaliere</h3>
# <h3> División: 311</h3>
# </div>

sudo vim Dockerfile

# Contenido que se debe agregar al Dockerfile:
# FROM nginx:latest
#
# COPY index.html /usr/share/nginx/html/index.html
#
# EXPOSE 80

sudo docker build -t web1-cavaliere .

sudo docker images

# Acá agrego el usuario actual (santicavaliere) al grupo docker para evitar usar sudo constantemente
sudo usermod -aG docker santicavaliere

# Uso este comando para evitar tener que cerrar la máquina
newgrp docker

sudo docker login -u santicavaliere
# Acá va mi contraseña

docker tag web1-cavaliere santicavaliere/web1:latest

docker images

docker push santicavaliere/web1:latest

# Acá se crea el archivo run.sh para ejecutar el contenedor
sudo vim run.sh

# Contenido que se debe agregar al archivo run.sh:
# #!/bin/bash
#
# docker run -d -p 8080:80 santicavaliere/web1:latest

sudo chmod +x run.sh

sudo ./run.sh

# Verificar que el contenedor está corriendo
docker ps

# Probé con curl porque vi que era más rápido, sin embargo, probando con el ip en una pestaña de windows también funciona
curl http://localhost:8080

