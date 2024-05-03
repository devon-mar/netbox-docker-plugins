FROM netboxcommunity/netbox:v3.7.7

RUN /opt/netbox/venv/bin/pip install --no-cache-dir netbox-lists netbox-kea
