#!/bin/bash

sudo mkdir -p /usr/local/bin/Cavaliere
sudo vim /usr/local/bin/Cavaliere/AltaUser-Groups.sh
#!/bin/bash

# En este paso validamos parámetros
if [ "$#" -ne 2 ]; then
  echo "Uso: $0 <usuario_existente> <ruta_lista_usuarios>"
  exit 1
fi

USER_EXISTENTE="$1"
LISTA_USUARIOS="$2"

# Acá validamos que el usuario existe
if ! id "$USER_EXISTENTE" &>/dev/null; then
  echo "El usuario $USER_EXISTENTE no existe."
  exit 1
fi

# Acá validamos que el archivo existe
if [ ! -f "$LISTA_USUARIOS" ]; then
  echo "El archivo $LISTA_USUARIOS no existe."
  exit 1
fi

# Contraseña del usuario existente
PASSWORD=$(sudo getent shadow "$USER_EXISTENTE" | cut -d':' -f2)
if [ -z "$PASSWORD" ]; then
  echo "No se pudo obtener la contraseña del usuario $USER_EXISTENTE."
  exit 1
fi

# Crear grupos y usuarios pero antes leer el archivo de usuarios
while IFS=, read -r GRUPO USUARIO; do
  # Crear grupo si no existe
  if ! getent group "$GRUPO" &>/dev/null; then
    sudo groupadd "$GRUPO"
    echo "Grupo $GRUPO creado."
  else
    echo "Grupo $GRUPO ya existe."
  fi

  # Crear usuario si no existe
  if ! id "$USUARIO" &>/dev/null; then
    sudo useradd -m -g "$GRUPO" -p "$PASSWORD" "$USUARIO"
    echo "Usuario $USUARIO creado y asignado al grupo $GRUPO."
  else
    echo "Usuario $USUARIO ya existe."
  fi
done < "$LISTA_USUARIOS"

echo "Finalizado"
sudo chmod +x /usr/local/bin/Cavaliere/AltaUser-Groups.sh
mkdir -p /home/vagrant/RTA_Examen_20241114/202406/bash_script
vim /home/vagrant/RTA_Examen_20241114/202406/bash_script/Lista_Usuarios.txt
i
grupo1,usuario1
grupo2,usuario2
grupo3,usuario3
:wq

