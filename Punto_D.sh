cd /UTN-FRA_SO_Examenes/202311_Recu/ansible

reset; ansible-playbook -i inventory/hosts playbook.yml

# Número de prueba:
202311_Recu2doParcial.yml

cd ..

cd ..

cd /UTN-FRA_SO_Examenes/202406/ansible

mkdir -p /tmp/2do_parcial/alumno

mkdir -p /tmp/2do_parcial/equipo

tree /tmp/2do_parcial

sudo mkdir -p multi_Pruebas/templates

sudo vim datos_alumno.j2
Nombre: Santiago
Apellido: Cavaliere
Division: 311

sudo vim datos_equipo.j2
IP: 192.168.56.3/24
Distribución: Ubuntu 22.04.5 LTS
Cantidad de Cores: 2

# Desde UTN-FRA_SO_Examenes/202406/ansible/roles/multi_Pruebas crear tasks:
mkdir tasks

cd tasks

sudo vim prueba_202311_Recu2doParcial.yml

# Se agrega lo siguiente
- name: Crear estructura de directorios
  file:
    path: "{{ item }}"
    state: directory
  loop:
    - /tmp/2do_parcial/alumno
    - /tmp/2do_parcial/equipo

- name: Generar archivo datos_alumno.txt
  template:
    src: datos_alumno.j2
    dest: /tmp/2do_parcial/alumno/datos_alumno.txt
  vars:
    nombre: "tu-nombre"
    apellido: "tu-apellido"
    division: "tu-division"

- name: Generar archivo datos_equipo.txt
  template:
    src: datos_equipo.j2
    dest: /tmp/2do_parcial/equipo/datos_equipo.txt
  vars:
    ip: "tu-ip"
    distro: "tu-distro"
    cores: "tu-cantidad-de-cores"

sudo mv ~/UTN-FRA_SO_Examenes/202406/ansible/roles/multi_Pruebas/tasks/prueba_202311_Recu2doParcial.yml ~/UTN-FRA_SO_Examenes/202406/ansible/roles/multi_Pruebas/tasks/main.yml

sudo vim ~/UTN-FRA_SO_Examenes/202406/ansible/playbook.yml

# Le agrego lo siguiente al archivo yml
---
- name: Playbook principal
  hosts: localhost
  become: yes

  tasks:
    - name: Ejecutar el role multi_Pruebas
      include_role:
        name: multi_Pruebas

    - name: Verificar archivos generados
      debug:
        msg:
          - "Archivo /tmp/2do_parcial/alumno/datos_alumno.txt generado correctamente."
          - "Archivo /tmp/2do_parcial/equipo/datos_equipo.txt generado correctamente."

    - name: Mostrar contenido del archivo datos_alumno.txt
      command: cat /tmp/2do_parcial/alumno/datos_alumno.txt
      register: alumno_output

    - name: Contenido de datos_alumno.txt
      debug:
        var: alumno_output.stdout

    - name: Mostrar contenido del archivo datos_equipo.txt
      command: cat /tmp/2do_parcial/equipo/datos_equipo.txt
      register: equipo_output

    - name: Contenido de datos_equipo.txt
      debug:
        var: equipo_output.stdout

ansible-playbook playbook.yml

# Por si se quiere verificar:
cat /tmp/2do_parcial/alumno/datos_alumno.txt
cat /tmp/2do_parcial/equipo/datos_equipo.txt

# Comandos para que todo usuario del grupo “2PSupervisores” no requiera password al ejecutar sudo
# Dentro de UTN-FRA_SO_Examenes/202406/ansible
sudo vim configuracion_sudoers.yml

---
- name: Configurar sudoers para 2PSupervisores
  hosts: localhost
  become: yes
  tasks:
    - name: Crear grupo 2PSupervisores si no existe
      group:
        name: 2PSupervisores
        state: present

    - name: Configurar sudo sin contraseña para el grupo 2PSupervisores
      lineinfile:
        path: /etc/sudoers.d/2PSupervisores
        create: yes
        line: '%2PSupervisores ALL=(ALL) NOPASSWD:ALL'
        mode: '0440'

ansible-playbook configuracion_sudoers.yml

