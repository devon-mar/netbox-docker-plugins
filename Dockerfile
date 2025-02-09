FROM netboxcommunity/netbox:v4.2.3

RUN /usr/local/bin/uv pip install --no-cache netbox-lists netbox-kea
