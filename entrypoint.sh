#! /bin/sh

RESPONSE=`echo "HTTP/1.1 ${RESPONSE_CODE}\n\n ${HTML:=\`cat index.html\`}" | \
sed "s/{{message}}/$(echo ${MESSAGE})/g" | \
sed "s/{{contact}}/$(echo ${CONTACT_LINK})/g" | \
sed "s/{{mail}}/$(echo ${MAIL_ADDRESS})/g" | \
sed "s/{{headline}}/$(echo ${HEADLINE})/g" | \
sed "s/{{team_name}}/$(echo ${TEAM_NAME})/g" | \
sed "s/{{title}}/$(echo ${TITLE})/g" | \
sed "s/{{theme}}/$(echo ${THEME})/g"`

while true;  do printf "$RESPONSE" | nc -lzp "$PORT";  done
