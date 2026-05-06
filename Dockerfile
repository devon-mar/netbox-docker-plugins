FROM netboxcommunity/netbox:v4.6.0

RUN /usr/local/bin/uv pip install --no-cache netbox-lists netbox-kea
