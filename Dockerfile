ARG ESI_IMAGE=esi
ARG ESI_VERSION=1.2.9

FROM ${ESI_IMAGE}:${ESI_VERSION}

ADD . /esi/
WORKDIR /esi
USER root
RUN pip install -i https://pypi.evetech.net/pypi/ -q .
USER esi