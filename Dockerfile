FROM busybox
LABEL maintainer="Yusuph Wickama <yusuph.wickama@wickerlabs.com>"
COPY html/index.html entrypoint.sh /
ENV MESSAGE="Sorry for the inconvenience but we\&rsquo;re performing some maintenance at the moment. If you need to you can always <a href=\"mailto:{{mail}}\">{{contact}}<\/a>, otherwise we\&rsquo;ll be back online shortly!"
ENV HEADLINE="We\&rsquo;ll be back soon!"
ENV MAIL_ADDRESS=mail@example.com
ENV PORT=8080
ENV TEAM_NAME="The Team"
ENV TITLE="Site Maintenance"
ENV LINK_COLOR="#dc8100"
ENV THEME="Light"
ENV RESPONSE_CODE="503 Service Unavailable"
ENV CONTACT_LINK="contact us"
ENTRYPOINT [ "./entrypoint.sh" ]