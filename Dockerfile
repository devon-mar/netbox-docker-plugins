FROM netboxcommunity/netbox:v3.7.3

RUN /opt/netbox/venv/bin/pip install --no-cache-dir netbox-lists netbox-kea
