# sdnclient.SecurityApi

All URIs are relative to *https://seadatanet-buffer5.maris.nl/api_v5.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**login_post**](SecurityApi.md#login_post) | **POST** /login | Normal login


# **login_post**
> LoginPost200Response login_post(login)

Normal login

### Example


```python
import time
import sdnclient
from sdnclient.api import security_api
from sdnclient.model.login import Login
from sdnclient.model.errors_return import ErrorsReturn
from sdnclient.model.login_post200_response import LoginPost200Response
from pprint import pprint
# Defining the host is optional and defaults to https://seadatanet-buffer5.maris.nl/api_v5.1
# See configuration.py for a list of all supported configuration parameters.
configuration = sdnclient.Configuration(
    host = "https://seadatanet-buffer5.maris.nl/api_v5.1"
)


# Enter a context with an instance of the API client
with sdnclient.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = security_api.SecurityApi(api_client)
    login = Login(
        username="username_example",
        password="password_example",
    ) # Login | Login to get a token; this token can only be used in this API;

    # example passing only required values which don't have defaults set
    try:
        # Normal login
        api_response = api_instance.login_post(login)
        pprint(api_response)
    except sdnclient.ApiException as e:
        print("Exception when calling SecurityApi->login_post: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **login** | [**Login**](Login.md)| Login to get a token; this token can only be used in this API; |

### Return type

[**LoginPost200Response**](LoginPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**401** | Invalid token |  -  |
**200** | Your token |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

