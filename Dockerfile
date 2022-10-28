FROM netboxcommunity/netbox:v3.3.6

COPY configuration.py /etc/netbox/config/configuration.py
RUN /opt/netbox/venv/bin/pip install --no-cache-dir netbox-secretstore netbox-lists \
    && SECRET_KEY="dummy" /opt/netbox/venv/bin/python /opt/netbox/netbox/manage.py collectstatic --no-input
