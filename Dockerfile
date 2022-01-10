FROM netboxcommunity/netbox:v3.1.5
RUN apk add xmlsec gcc musl-dev
RUN /opt/netbox/venv/bin/pip install --upgrade setuptools
RUN /opt/netbox/venv/bin/pip install django3-auth-saml2 "netbox-plugin-auth-saml2>=2.3" "netbox-secretstore" netbox-lists
RUN /opt/netbox/venv/bin/pip install pysaml2==6.5.2
COPY configuration.py /etc/netbox/config/configuration.py
RUN SECRET_KEY="dummy" /opt/netbox/venv/bin/python /opt/netbox/netbox/manage.py collectstatic --no-input
