# sdnclient.OrdersApi

All URIs are relative to *https://seadatanet-buffer5.maris.nl/api_v5.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**order_download_csv_order_number_restriction_get**](OrdersApi.md#order_download_csv_order_number_restriction_get) | **GET** /order/download/csv/{orderNumber}/{restriction} | Download metadata CSV for this order
[**order_order_number_get**](OrdersApi.md#order_order_number_get) | **GET** /order/{orderNumber} | Find order by Ordernumber
[**order_query_post**](OrdersApi.md#order_query_post) | **POST** /order/query | Make an order by query
[**orderlist_get**](OrdersApi.md#orderlist_get) | **GET** /orderlist | Show all your relevant orders from 30 days or less


# **order_download_csv_order_number_restriction_get**
> file_type order_download_csv_order_number_restriction_get(order_number, restriction)

Download metadata CSV for this order

Download the metadata in CSV format to get metadata for this order

### Example

* Bearer (bearerToken) Authentication (bearerAuth):

```python
import time
import sdnclient
from sdnclient.api import orders_api
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
    api_instance = orders_api.OrdersApi(api_client)
    order_number = 1 # int | 
    restriction = "unrestricted" # str | 

    # example passing only required values which don't have defaults set
    try:
        # Download metadata CSV for this order
        api_response = api_instance.order_download_csv_order_number_restriction_get(order_number, restriction)
        pprint(api_response)
    except sdnclient.ApiException as e:
        print("Exception when calling OrdersApi->order_download_csv_order_number_restriction_get: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_number** | **int**|  |
 **restriction** | **str**|  |

### Return type

**file_type**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/zip


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**401** | Invalid token |  -  |
**200** | The metadata from this order in CSV format zipped |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **order_order_number_get**
> OrderDetailsReturn order_order_number_get(order_number)

Find order by Ordernumber

Returns a single order including download if available

### Example

* Bearer (bearerToken) Authentication (bearerAuth):

```python
import time
import sdnclient
from sdnclient.api import orders_api
from sdnclient.model.order_details_return import OrderDetailsReturn
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
    api_instance = orders_api.OrdersApi(api_client)
    order_number = 1 # int | 

    # example passing only required values which don't have defaults set
    try:
        # Find order by Ordernumber
        api_response = api_instance.order_order_number_get(order_number)
        pprint(api_response)
    except sdnclient.ApiException as e:
        print("Exception when calling OrdersApi->order_order_number_get: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_number** | **int**|  |

### Return type

[**OrderDetailsReturn**](OrderDetailsReturn.md)

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

# **order_query_post**
> OrderQueryReturn order_query_post(order_query)

Make an order by query

Make an order from all requested records with specified fields

### Example

* Bearer (bearerToken) Authentication (bearerAuth):

```python
import time
import sdnclient
from sdnclient.api import orders_api
from sdnclient.model.errors_return import ErrorsReturn
from sdnclient.model.order_query import OrderQuery
from sdnclient.model.order_query_return import OrderQueryReturn
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
    api_instance = orders_api.OrdersApi(api_client)
    order_query = OrderQuery(
        user_order_name="user_order_name_example",
        motivation="motivation_example",
        data_format_l24=[
            "data_format_l24_example",
        ],
        query_fields=OrderQueryQueryFields(
            free_search="water",
            start_date="20100827",
            end_date="20100827",
            north=53.895,
            east=6.925,
            south=50.708,
            west=0.755,
            inside=1,
            author_edmo=634,
            author_edmo_country=24,
            originator_edmo="634",
            measuring_area_type_l02=[
                "3",
            ],
            parameters_p02="aslv",
            parameters_p03="c045",
            parameters_p08="ds04",
            custodium_edmo="634",
            distributor_edmo="634",
        ),
    ) # OrderQuery | 

    # example passing only required values which don't have defaults set
    try:
        # Make an order by query
        api_response = api_instance.order_query_post(order_query)
        pprint(api_response)
    except sdnclient.ApiException as e:
        print("Exception when calling OrdersApi->order_query_post: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_query** | [**OrderQuery**](OrderQuery.md)|  |

### Return type

[**OrderQueryReturn**](OrderQueryReturn.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**401** | Invalid token |  -  |
**200** | Successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orderlist_get**
> OrderListReturn orderlist_get()

Show all your relevant orders from 30 days or less

Returns a list of all your order not older then 30 days

### Example

* Bearer (bearerToken) Authentication (bearerAuth):

```python
import time
import sdnclient
from sdnclient.api import orders_api
from sdnclient.model.errors_return import ErrorsReturn
from sdnclient.model.order_list_return import OrderListReturn
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
    api_instance = orders_api.OrdersApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Show all your relevant orders from 30 days or less
        api_response = api_instance.orderlist_get()
        pprint(api_response)
    except sdnclient.ApiException as e:
        print("Exception when calling OrdersApi->orderlist_get: %s\n" % e)
```


### Parameters
This endpoint does not need any parameter.

### Return type

[**OrderListReturn**](OrderListReturn.md)

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

