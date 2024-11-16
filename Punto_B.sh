sudo mkdir -p /usr/local/bin/Cavaliere
sudo vim /usr/local/bin/Cavaliere/AltaUser-Groups.sh
#!/bin/bash

# Acá se verifica que se proporcionen los dos parámetros necesarios
if [ "$#" -ne 2 ]; then
    echo "Uso: $0 <Usuario_para_clave> <Ruta_Lista_Usuarios>"
    exit 1
fi

# Se asignan los parámetros a variables
USER_PASSWORD_SOURCE=$1
USER_LIST_FILE=$2

# Acá verfiicamos que el archivo con la lista de usuarios exista
if [ ! -f "$USER_LIST_FILE" ]; then
    echo "Error: El archivo $USER_LIST_FILE no existe."
    exit 1
fi

# Vamos a verificar que el usuario del cual se obtendrá la clave exista
if ! id "$USER_PASSWORD_SOURCE" &>/dev/null; then
    echo "Error: El usuario $USER_PASSWORD_SOURCE no existe."
    exit 1
fi

# A continuación, obtenemos la clave del usuario
USER_PASSWORD=$(sudo getent shadow "$USER_PASSWORD_SOURCE" | cut -d: -f2)
if [ -z "$USER_PASSWORD" ]; then
    echo "Error: No se pudo obtener la clave del usuario $USER_PASSWORD_SOURCE."
    exit 1
fi

# Procesamos el archivo de usuarios
while IFS=',' read -r USERNAME GROUPNAME HOMEDIR; do
    # Ignorar líneas vacías o líneas que comienzan con "#"
    [[ "$USERNAME" =~ ^#.*$ || -z "$USERNAME" ]] && continue

    # Validamos que el formato sea correcto
    if [ -z "$GROUPNAME" ] || [ -z "$HOMEDIR" ]; then
        echo "Error: Formato inválido en la línea: $USERNAME,$GROUPNAME,$HOMEDIR"
        continue
    fi

    # Si no existe el grupo, se crea
    if ! getent group "$GROUPNAME" &>/dev/null; then
        echo "Creando grupo: $GROUPNAME"
        sudo groupadd "$GROUPNAME"
        if [ $? -ne 0 ]; then
            echo "Error: No se pudo crear el grupo $GROUPNAME."
            continue
        fi
    else
        echo "El grupo $GROUPNAME ya existe."
    fi

    # Crear el usuario si no existe
    if ! id "$USERNAME" &>/dev/null; then
        echo "Creando usuario: $USERNAME con directorio home: $HOMEDIR"
        sudo useradd -m -g "$GROUPNAME" -d "$HOMEDIR" -s /bin/bash "$USERNAME"
        if [ $? -ne 0 ]; then
            echo "Error: No se pudo crear el usuario $USERNAME."
            continue
        fi

        # Asignar la contraseña al usuario
        echo "$USERNAME:$USER_PASSWORD" | sudo chpasswd -e
        if [ $? -ne 0 ]; then
            echo "Error: No se pudo asignar la clave al usuario $USERNAME."
            continue
        fi

        echo "Usuario $USERNAME creado, asignado al grupo $GROUPNAME y con directorio home $HOMEDIR."
    else
        echo "El usuario $USERNAME ya existe."
    fi
done < "$USER_LIST_FILE"

echo "Finalizado."
sudo chmod +x /usr/local/bin/Cavaliere/AltaUser-Groups.sh
sudo /usr/local/bin/Cavaliere/AltaUser-Groups.sh vagrant ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt

