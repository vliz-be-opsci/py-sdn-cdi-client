docker run --rm -v "${PWD}:/local" openapitools/openapi-generator-cli generate --skip-validate-spec \
    -i https://seadatanet-buffer5.maris.nl/api_v5.1/specifications.json \
    -g python \
    -o /local/out/python \
    -p packageName=sdn-client
