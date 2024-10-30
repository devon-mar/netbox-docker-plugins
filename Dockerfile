FROM netboxcommunity/netbox:v4.1.5

RUN /opt/netbox/venv/bin/pip install --no-cache-dir netbox-lists netbox-kea
