FROM netboxcommunity/netbox:v4.2.0

RUN /opt/netbox/venv/bin/pip install --no-cache-dir netbox-lists netbox-kea
