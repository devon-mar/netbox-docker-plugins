FROM netboxcommunity/netbox:v4.0.3

RUN /opt/netbox/venv/bin/pip install --no-cache-dir netbox-lists netbox-kea
