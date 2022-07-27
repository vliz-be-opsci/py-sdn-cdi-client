# sdnclient.InfoApi

All URIs are relative to *https://seadatanet-buffer5.maris.nl/api_v5.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**status_get**](InfoApi.md#status_get) | **GET** /status | Status


# **status_get**
> status_get()

Status

### Example

* Bearer (bearerToken) Authentication (bearerAuth):

```python
import time
import sdnclient
from sdnclient.api import info_api
from sdnclient.model.errors_return import ErrorsReturn
from pprint import pprint
# Defining the host is optional and defaults to https://seadatanet-buffer5.maris.nl/api_v5.1
# See configuration.py for a list of all supported configuration parameters.
configuration = sdnclient.Configuration(
    host = "https://seadatanet-buffer5.maris.nl/api_v5.1"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (bearerToken): bearerAuth
configuration = sdnclient.Configuration(
    access_token = 'YOUR_BEARER_TOKEN'
)

# Enter a context with an instance of the API client
with sdnclient.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = info_api.InfoApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Status
        api_instance.status_get()
    except sdnclient.ApiException as e:
        print("Exception when calling InfoApi->status_get: %s\n" % e)
```


### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**401** | Invalid token |  -  |
**200** | Successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

