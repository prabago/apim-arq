#!/bin/sh

echo $(which apictl)
apictl version

rm -rf $HOME/.wso2apictl

echo 'setting up dev environment'
apictl add-env -e local \
                    --apim https://localhost:9443 \
                    --token https://localhost:8243/token
apictl add-env -e int \
                    --apim https://localhost:9445 \
                    --token https://localhost:8243/token