FROM debian

RUN apt-get -yqq update

# Supervisord

RUN apt-get install -y supervisor 
RUN mkdir -p /var/log/supervisor 
RUN mkdir -p /etc/supervisor/conf.d/ 
COPY supervisord.conf /etc/supervisord.conf

# Cloudflared

RUN apt-get install -y wget 
RUN wget -O- https://bin.equinox.io/c/VdrWdbjqyF/cloudflared-stable-linux-amd64.tgz | tar xz 
RUN mkdir -p /etc/cloudflared/ 
COPY cert.pem /etc/cloudflared/ 
COPY config.yaml.template /etc/cloudflared/

RUN apt-get install -y gettext

COPY tunnel.sh /
RUN ["chmod", "+x", "/tunnel.sh"]
ENTRYPOINT ["/tunnel.sh"]