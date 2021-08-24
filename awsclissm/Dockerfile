FROM amazon/aws-cli

RUN yum install -y shadow-utils
RUN groupadd -r app -g 1000 && useradd -u 1000 -g app -m app

RUN curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/linux_64bit/session-manager-plugin.rpm" -o "session-manager-plugin.rpm"
RUN yum install -y session-manager-plugin.rpm

USER app
RUN mkdir /home/app/aws
WORKDIR /home/app/aws

