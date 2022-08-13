FROM netboxcommunity/netbox:v3.2.8

COPY configuration.py /etc/netbox/config/configuration.py
RUN apt-get update \
    && apt-get install -y xmlsec1 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && /opt/netbox/venv/bin/pip install --no-cache-dir django3-auth-saml2 "netbox-plugin-auth-saml2>=2.3" "netbox-secretstore" netbox-lists \
    && /opt/netbox/venv/bin/pip install --no-cache-dir pysaml2==6.5.2 \
    && SECRET_KEY="dummy" /opt/netbox/venv/bin/python /opt/netbox/netbox/manage.py collectstatic --no-input
