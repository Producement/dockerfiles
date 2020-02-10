FROM golang:1.13

RUN mkdir -p $GOPATH/src/github.com/versent/saml2aws
RUN git clone https://github.com/v3rm0n/saml2aws.git $GOPATH/src/github.com/versent/saml2aws

WORKDIR $GOPATH/src/github.com/versent/saml2aws

RUN git checkout google-mfa-alt

RUN make mod && make install

ENTRYPOINT ["saml2aws"]
