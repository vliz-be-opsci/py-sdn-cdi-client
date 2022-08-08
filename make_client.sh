docker run --rm -v "${PWD}:/local" openapitools/openapi-generator-cli generate  \
    -i /local/api_def/openapi.yaml \
    -g python \
    -o /local/out/python \
    -p packageName=cdi_sdn_py
