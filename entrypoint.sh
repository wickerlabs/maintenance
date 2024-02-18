#! /bin/sh
sed -i "s/{{message}}/$(echo ${MESSAGE})/g" index.html
sed -i "s/{{contact}}/$(echo ${CONTACT_LINK})/g" index.html
sed -i "s/{{mail}}/$(echo ${MAIL_ADDRESS})/g" index.html
sed -i "s/{{headline}}/$(echo ${HEADLINE})/g" index.html
sed -i "s/{{team_name}}/$(echo ${TEAM_NAME})/g" index.html
sed -i "s/{{title}}/$(echo ${TITLE})/g" index.html
sed -i "s/{{theme}}/$(echo ${THEME})/g" index.html
sed -i "s/{{link_color}}/$(echo ${LINK_COLOR})/g" index.html

while true;  do {  echo -e "HTTP/1.1 ${RESPONSE_CODE}\r\n"; echo "$(cat index.html)"; } | nc -lvp  "$PORT";  done