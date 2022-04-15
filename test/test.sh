#!/bin/bash

set -euxo pipefail

echo "Copying docker-compose override file"
cp ./test/docker-compose.override.yml ./netbox-docker/

echo "Copying Dockerfile"
cp ./Dockerfile ./netbox-docker/

echo "Copy configuration.py for build"
cp ./netbox-docker/configuration/configuration.py ./netbox-docker/

echo "Copy plugins.py"
cp ./test/plugins.py ./netbox-docker/configuration/plugins.py

echo "::group::docker"

echo "docker-compose up"
cd netbox-docker
docker-compose build
docker-compose up -d

echo "::endgroup::"

echo "::group::Wait for NetBox to start"
# NetBox v2.11 might take more time to start
# due to all the migrations that have to be applied
for i in {1..20}; do curl -Ss http://localhost:8000/api/status/ && break || echo -e "\033[0;33mNot started yet ($i)\033[0m" && sleep 10; done

set +e
curl -Ss http://localhost:8000/api/status/
CURL_RET=$?
set -e


if [ "$CURL_RET" -ne 0 ]; then
    echo "::error NetBox failed to start."
    docker-compose logs
    exit $CURL_RET
fi

echo -e "\033[0;32mNetBox started\033[0m"
echo "::endgroup::"
