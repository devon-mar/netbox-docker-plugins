FROM netboxcommunity/netbox:v4.4.1

RUN /usr/local/bin/uv pip install --no-cache netbox-lists netbox-kea
