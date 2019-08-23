#! /bin/sh
sed -i "s/{{mail}}/$(echo ${MAIL_ADDRESS})/g" index.html
sed -i "s/{{team_name}}/$(echo ${TEAM_NAME})/g" index.html
sed -i "s/{{title}}/$(echo ${TITLE})/g" index.html
sed -i "s/{{link_color}}/$(echo ${LINK_COLOR})/g" index.html
while true;  do {  echo -e "HTTP/1.1 200 OK\r\n"; echo "$(cat index.html)"; } | nc -lvp  "$PORT";  done