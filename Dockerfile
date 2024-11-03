FROM netboxcommunity/netbox:v4.1.6

RUN /opt/netbox/venv/bin/pip install --no-cache-dir netbox-lists netbox-kea
