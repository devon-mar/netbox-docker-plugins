FROM netboxcommunity/netbox:v3.6.4

RUN /opt/netbox/venv/bin/pip install --no-cache-dir netbox-lists netbox-kea
