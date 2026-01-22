FROM netboxcommunity/netbox:v4.5.1

RUN /usr/local/bin/uv pip install --no-cache netbox-lists netbox-kea
