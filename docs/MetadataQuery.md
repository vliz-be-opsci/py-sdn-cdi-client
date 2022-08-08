# MetadataQuery


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**facet_fields** | **[str]** | if multiple options then use comma seperated values, See [reference list facet_fields](https://seadatanet-buffer5.maris.nl/api_v5.1/reference_list/facet_fields) | [optional]  if omitted the server will use the default value of ["parameters_p08","parameters_p03","parameters_p02"]
**return_fields** | **[str]** | if multiple options then use comma seperated values, See [reference list return_fields](https://seadatanet-buffer5.maris.nl/api_v5.1/reference_list/return_fields) | [optional]  if omitted the server will use the default value of ["n_code","dataname","cdi_identifier","c_originator_edmo_country","start_date","end_date","c_inReturn_fieldsEnumument_l05","version","data_format_l24","bbox_north","bbox_east","bbox_south","bbox_west","c_measuring_area_type_l02"]
**pagination_page** | **int** | Number of records to return | [optional]  if omitted the server will use the default value of 20
**pagination_count** | **int** | Number to start from, never larger then records found | [optional]  if omitted the server will use the default value of 0
**pagination_sort** | **str** | Field used for sorting the response, only one value is allowed, See [reference list pagination_sort](https://seadatanet-buffer5.maris.nl/api_v5.1/reference_list/pagination_sort) | [optional]  if omitted the server will use the default value of "n_code"
**pagination_sort_type** | **str** | Field use for sorting the response, only one value is allowed | [optional]  if omitted the server will use the default value of "asc"
**query_fields** | [**OrderQueryQueryFields**](OrderQueryQueryFields.md) |  | [optional] 
**any string name** | **bool, date, datetime, dict, float, int, list, str, none_type** | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


