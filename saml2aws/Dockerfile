FROM golang:1.13

RUN mkdir -p $GOPATH/src/github.com/versent/saml2aws
RUN git clone https://github.com/v3rm0n/saml2aws.git $GOPATH/src/github.com/versent/saml2aws

WORKDIR $GOPATH/src/github.com/versent/saml2aws

RUN git checkout google-form-fix

RUN make mod && make install

RUN addgroup --gid 1000 app
RUN adduser --uid 1000 --gid 1000 --disabled-password --gecos "" app

USER app

RUN mkdir ~/.aws

WORKDIR /home/app

ENTRYPOINT ["saml2aws"]
