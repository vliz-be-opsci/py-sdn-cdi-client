# sdn-client
A detailed description of the operation.

This Python package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 5.1.0
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.PythonClientCodegen

## Requirements.

Python >=3.6

## Installation & Usage
### pip install

If the python package is hosted on a repository, you can install directly using:

```sh
pip install git+https://github.com/GIT_USER_ID/GIT_REPO_ID.git
```
(you may need to run `pip` with root permission: `sudo pip install git+https://github.com/GIT_USER_ID/GIT_REPO_ID.git`)

Then import the package:
```python
import sdn-client
```

### Setuptools

Install via [Setuptools](http://pypi.python.org/pypi/setuptools).

```sh
python setup.py install --user
```
(or `sudo python setup.py install` to install the package for all users)

Then import the package:
```python
import sdn-client
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```python

import time
import sdn-client
from pprint import pprint
from sdn-client.api import info_api
from sdn-client.model.errors_return import ErrorsReturn
# Defining the host is optional and defaults to https://seadatanet-buffer5.maris.nl/api_v5.1
# See configuration.py for a list of all supported configuration parameters.
configuration = sdn-client.Configuration(
    host = "https://seadatanet-buffer5.maris.nl/api_v5.1"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (bearerToken): bearerAuth
configuration = sdn-client.Configuration(
    access_token = 'YOUR_BEARER_TOKEN'
)


# Enter a context with an instance of the API client
with sdn-client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = info_api.InfoApi(api_client)

    try:
        # Status
        api_instance.status_get()
    except sdn-client.ApiException as e:
        print("Exception when calling InfoApi->status_get: %s\n" % e)
```

## Documentation for API Endpoints

All URIs are relative to *https://seadatanet-buffer5.maris.nl/api_v5.1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*InfoApi* | [**status_get**](docs/InfoApi.md#status_get) | **GET** /status | Status
*MetadataApi* | [**metadata_query_post**](docs/MetadataApi.md#metadata_query_post) | **POST** /metadata/query | Make a query and get the metadata back
*OrdersApi* | [**order_download_csv_order_number_restriction_get**](docs/OrdersApi.md#order_download_csv_order_number_restriction_get) | **GET** /order/download/csv/{orderNumber}/{restriction} | Download metadata CSV for this order
*OrdersApi* | [**order_order_number_get**](docs/OrdersApi.md#order_order_number_get) | **GET** /order/{orderNumber} | Find order by Ordernumber
*OrdersApi* | [**order_query_post**](docs/OrdersApi.md#order_query_post) | **POST** /order/query | Make an order by query
*OrdersApi* | [**orderlist_get**](docs/OrdersApi.md#orderlist_get) | **GET** /orderlist | Show all your relevant orders from 30 days or less
*SecurityApi* | [**login_post**](docs/SecurityApi.md#login_post) | **POST** /login | Normal login


## Documentation For Models

 - [ErrorsReturn](docs/ErrorsReturn.md)
 - [Login](docs/Login.md)
 - [LoginPost200Response](docs/LoginPost200Response.md)
 - [MetadataQuery](docs/MetadataQuery.md)
 - [MetadataQueryReturn](docs/MetadataQueryReturn.md)
 - [MetadataQueryReturnFacetSearchInner](docs/MetadataQueryReturnFacetSearchInner.md)
 - [MetadataQueryReturnFacetSearchInnerFacetField1](docs/MetadataQueryReturnFacetSearchInnerFacetField1.md)
 - [MetadataQueryReturnFacetSearchInnerFacetField1StepsInner](docs/MetadataQueryReturnFacetSearchInnerFacetField1StepsInner.md)
 - [MetadataQueryReturnResultInner](docs/MetadataQueryReturnResultInner.md)
 - [MetadataQueryReturnYouSearchForTranslationInner](docs/MetadataQueryReturnYouSearchForTranslationInner.md)
 - [MetadataQueryReturnYouSearchForTranslationInnerQueryField1](docs/MetadataQueryReturnYouSearchForTranslationInnerQueryField1.md)
 - [MetadataQueryReturnYouSearchForTranslationInnerQueryField2](docs/MetadataQueryReturnYouSearchForTranslationInnerQueryField2.md)
 - [OrderDetailsReturn](docs/OrderDetailsReturn.md)
 - [OrderDetailsReturnDownload](docs/OrderDetailsReturnDownload.md)
 - [OrderDetailsReturnDownloadCsv](docs/OrderDetailsReturnDownloadCsv.md)
 - [OrderDetailsReturnDownloadData](docs/OrderDetailsReturnDownloadData.md)
 - [OrderDetailsReturnDownloadDataUnrestricted](docs/OrderDetailsReturnDownloadDataUnrestricted.md)
 - [OrderListReturn](docs/OrderListReturn.md)
 - [OrderListReturnOrdersInner](docs/OrderListReturnOrdersInner.md)
 - [OrderListReturnOrdersInnerOrderNumber](docs/OrderListReturnOrdersInnerOrderNumber.md)
 - [OrderQuery](docs/OrderQuery.md)
 - [OrderQueryQueryFields](docs/OrderQueryQueryFields.md)
 - [OrderQueryReturn](docs/OrderQueryReturn.md)
 - [OrderQueryReturnWarnings](docs/OrderQueryReturnWarnings.md)


## Documentation For Authorization


## bearerAuth

- **Type**: Bearer authentication (bearerToken)


## Author

info@maris.nl


## Notes for Large OpenAPI documents
If the OpenAPI document is large, imports in sdn-client.apis and sdn-client.models may fail with a
RecursionError indicating the maximum recursion limit has been exceeded. In that case, there are a couple of solutions:

Solution 1:
Use specific imports for apis and models like:
- `from sdn-client.api.default_api import DefaultApi`
- `from sdn-client.model.pet import Pet`

Solution 2:
Before importing the package, adjust the maximum recursion limit as shown below:
```
import sys
sys.setrecursionlimit(1500)
import sdn-client
from sdn-client.apis import *
from sdn-client.models import *
```
