FROM netboxcommunity/netbox:v4.1.1

RUN /opt/netbox/venv/bin/pip install --no-cache-dir netbox-lists netbox-kea
