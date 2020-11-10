#!/bin/sh

echo $(which apictl)
apictl version

echo 'setting up dev environment'
apictl add-env -e local \
                    --apim https://localhost:9443 \
                    --token https://localhost:8243/token
apictl add-env -e des \
                    --apim https://am18co7apibus.localdomain:9443 \
                    --token https://am18co7apibus.localdomain:8243/token