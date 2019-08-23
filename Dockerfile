FROM busybox
LABEL maintainer="Yusuph Wickama <yusuph.wickama@wickerlabs.com>"
COPY index.html entrypoint.sh /
ENV MAIL_ADDRESS=mail@example.com PORT=8080 TEAM_NAME="The Team" TITLE="Site Maintenance" LINK_COLOR="#dc8100"
ENTRYPOINT [ "./entrypoint.sh" ]