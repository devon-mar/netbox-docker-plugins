FROM netboxcommunity/netbox:v3.5.9

RUN /opt/netbox/venv/bin/pip install --no-cache-dir netbox-lists netbox-kea
