FROM netboxcommunity/netbox:v4.3.2

RUN /usr/local/bin/uv pip install --no-cache netbox-lists netbox-kea
