FROM netboxcommunity/netbox:v4.2.3

RUN /opt/netbox/venv/bin/uv pip install --no-cache netbox-lists netbox-kea
