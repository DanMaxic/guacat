
FROM	amazonlinux:latest

LABEL   name="Guacamole local user" \
		maintainer="traiana sre team <sre@traiana.com>" \
		vendor="dan@danmaxic.com" \
		build-date="20180229"


# INSTALL PACKAGES
RUN     yum -y install epel-release && \
        yum-config-manager --enable epel && \
        yum update -y && \
        yum install -y  jre cairo-devel libjpeg-turbo-devel libjpeg-devel libpng-devel uuid-devel freerdp-devel pango-devel libssh2-devel libtelnet-devel libvncserver-devel pulseaudio-libs-devel openssl-devel libvorbis-devel libwebp-devel ffmpeg-devel && \
        yum clean all

ADD     src/* ./

# DOWNLOAD CONFIG FILES

EXPOSE 8080

CMD	["sh","init.sh"]