#!/bin/sh

echo $(which apictl)
apictl version

echo 'setting up dev environment'
apictl add-env -e local \
                    --apim https://localhost:9443 \
                    --token https://localhost:8243/token