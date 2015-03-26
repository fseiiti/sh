# Apache Tomcat 7

if [ $(id -u) -ne 0 ]; then
  echo "Executar como root."
  exit 1
fi

HOST="http://ftp.unicamp.br/pub"
#HOST="http://mirror.nbtelecom.com.br"

FILE_PATH="apache/tomcat/tomcat-7/v7.0.59/bin/apache-tomcat-7.0.59.tar.gz"

URL="$HOST/$FILE_PATH"

wget -O - "$URL" | tar xzf - -C /opt
