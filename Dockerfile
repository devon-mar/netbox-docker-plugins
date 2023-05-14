FROM netboxcommunity/netbox:v3.5.1

RUN /opt/netbox/venv/bin/pip install --no-cache-dir netbox-lists
