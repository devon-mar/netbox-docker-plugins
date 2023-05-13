FROM netboxcommunity/netbox:v3.4.8

COPY configuration.py /etc/netbox/config/configuration.py
RUN /opt/netbox/venv/bin/pip install --no-cache-dir netbox-lists
