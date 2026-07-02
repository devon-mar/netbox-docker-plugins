FROM netboxcommunity/netbox:v4.6.4

RUN /usr/local/bin/uv pip install --no-cache netbox-lists netbox-kea
