FROM netboxcommunity/netbox:v3.7.2

RUN /opt/netbox/venv/bin/pip install --no-cache-dir netbox-lists netbox-kea
