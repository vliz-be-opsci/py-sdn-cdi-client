# sdn-client.MetadataApi

All URIs are relative to *https://seadatanet-buffer5.maris.nl/api_v5.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**metadata_query_post**](MetadataApi.md#metadata_query_post) | **POST** /metadata/query | Make a query and get the metadata back


# **metadata_query_post**
> MetadataQueryReturn metadata_query_post(metadata_query)

Make a query and get the metadata back

Make a query and recieve the results and also the facet search info returned

### Example

* Bearer (bearerToken) Authentication (bearerAuth):

```python
import time
import sdn-client
from sdn-client.api import metadata_api
from sdn-client.model.errors_return import ErrorsReturn
from sdn-client.model.metadata_query_return import MetadataQueryReturn
from sdn-client.model.metadata_query import MetadataQuery
from pprint import pprint
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
    api_instance = metadata_api.MetadataApi(api_client)
    metadata_query = MetadataQuery(
        facet_fields="parameters_p08,parameters_p03,parameters_p02",
        return_fields="n_code,dataname,cdi_identifier,c_originator_edmo_country,start_date,end_date,c_instrument_l05,version,data_format_l24,bbox_north,bbox_east,bbox_south,bbox_west,c_measuring_area_type_l02",
        pagination_page=1,
        pagination_count=1,
        pagination_sort="n_code",
        pagination_sort_type="asc",
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
            measuring_area_type_l02="3",
            parameters_p02="aslv",
            parameters_p03="c045",
            parameters_p08="ds04",
            custodium_edmo="634",
            distributor_edmo="634",
        ),
    ) # MetadataQuery | 

    # example passing only required values which don't have defaults set
    try:
        # Make a query and get the metadata back
        api_response = api_instance.metadata_query_post(metadata_query)
        pprint(api_response)
    except sdn-client.ApiException as e:
        print("Exception when calling MetadataApi->metadata_query_post: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metadata_query** | [**MetadataQuery**](MetadataQuery.md)|  |

### Return type

[**MetadataQueryReturn**](MetadataQueryReturn.md)

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

