# saml2aws

saml2aws with Googlle alternative MFA flow support

## Usage

```
#!/bin/bash

docker run -v `pwd`:/app -v $HOME/.aws/:/root/.aws -v $HOME/.saml2aws:/root/.saml2aws --rm -it maidok/saml2aws:latest "$@"

```
