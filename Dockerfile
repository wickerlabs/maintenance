FROM busybox
LABEL maintainer="Yusuph Wickama <yusuph.wickama@wickerlabs.com>"
COPY html/index.html entrypoint.sh /
ENV MAIL_ADDRESS=mail@example.com PORT=8080 TEAM_NAME="The Team" TITLE="Site Maintenance" LINK_COLOR="#dc8100" RESPONSE_CODE="503 Service Unavailable"
ENTRYPOINT [ "./entrypoint.sh" ]