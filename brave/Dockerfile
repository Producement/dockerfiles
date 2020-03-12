FROM ubuntu:latest

RUN apt update && apt install curl gnupg -y


RUN curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -

RUN echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" > /etc/apt/sources.list.d/brave-browser-release.list

RUN apt update

RUN apt install brave-browser -y

RUN service dbus start

RUN apt install libnss3-tools

RUN useradd -m brave

USER brave
WORKDIR /home/brave

RUN mkdir -p .pki/nssdb
RUN certutil -N -d .pki/nssdb --empty-password

CMD ["brave-browser"]
