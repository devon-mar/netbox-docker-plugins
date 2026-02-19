FROM netboxcommunity/netbox:v4.5.3

RUN /usr/local/bin/uv pip install --no-cache netbox-lists netbox-kea
