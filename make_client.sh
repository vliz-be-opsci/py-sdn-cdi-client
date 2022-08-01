docker run --rm -v "${PWD}:/local" openapitools/openapi-generator-cli generate --skip-validate-spec \
    -i /local/api_generator/openapi.json \
    -g python \
    -o /local/out/python \
    -p packageName=cdi_sdn_py
