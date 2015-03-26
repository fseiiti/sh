#!/bin/bash

# Eclipse Luna SR1a (4.4.1)

if [ $(id -u) -ne 0 ]; then
  echo "Executar como root."
  exit 1
fi

SRV_ROOT="http://eclipse.c3sl.ufpr.br"
#ROOT="http://mirror.cc.vt.edu/pub/eclipse"

SRV_PATH="technology/epp/downloads/release/luna/SR1a"

#FILE_NAME="eclipse-java-luna-SR1a-linux-gtk-x86_64.tar.gz"
FILE_NAME="eclipse-jee-luna-SR1a-linux-gtk-x86_64.tar.gz"

FILE_PATH="$SRV_ROOT/$SRV_PATH/$FILE_NAME"

wget -O - "$FILE_PATH" | tar xzf - -C /opt
ln -s /opt/eclipse/eclipse /usr/bin

# Ajusta eclipse.ini
/bin/sed -i '/^--launcher.appendVmargs/i--launcher.GTK_version\n2' /opt/eclipse/eclipse.ini
