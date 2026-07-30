FROM netboxcommunity/netbox:v4.6.6

RUN /usr/local/bin/uv pip install --no-cache netbox-lists netbox-kea
