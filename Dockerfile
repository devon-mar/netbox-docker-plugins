FROM netboxcommunity/netbox:v3.1.8

COPY configuration.py /etc/netbox/config/configuration.py
RUN apk add --no-cache xmlsec \
    && apk add --no-cache --virtual .build-deps gcc musl-dev \
    && /opt/netbox/venv/bin/pip install --no-cache-dir django3-auth-saml2 "netbox-plugin-auth-saml2>=2.3" "netbox-secretstore" netbox-lists \
    && /opt/netbox/venv/bin/pip install --no-cache-dir pysaml2==6.5.2 \
    && apk del .build-deps gcc musl-dev \
    && SECRET_KEY="dummy" /opt/netbox/venv/bin/python /opt/netbox/netbox/manage.py collectstatic --no-input
