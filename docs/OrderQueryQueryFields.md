# OrderQueryQueryFields


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**free_search** | **str** | Search on any text field by entering text string. Boolean search is enabled e.g.: navstar AND (magnetometer OR gravimeter) | [optional] 
**start_date** | **str** | Custom date [[[yyyy]mm]dd] | [optional] 
**end_date** | **str** | Custom date [[[yyyy]mm]dd] | [optional] 
**north** | **float** | Latitude (dd.dd) from 90 to -90 | [optional] 
**east** | **float** | Longitude (ddd.dd) from 180 to -180 | [optional] 
**south** | **float** | Latitude (dd.dd) from 90 to -90 | [optional] 
**west** | **float** | Longitude (ddd.dd) from 180 to -180 | [optional] 
**inside** | **int** | if you want to search inside the bbox or not 0 &#x3D; normal; 1 &#x3D; inside) | [optional]  if omitted the server will use the default value of 1
**author_edmo** | **int** | Only one value is possble, See [reference list autor_edmo](https://seadatanet-buffer5.maris.nl/api_v5.1/reference_list/author_edmo) | [optional] 
**author_edmo_country** | **int** | Only one value is possble, See [reference list author_edmo_country](https://seadatanet-buffer5.maris.nl/api_v5.1/reference_list/author_edmo_country) | [optional] 
**originator_edmo** | **str** | if multiple options then use comma seperated values, See [reference list originator_edmo](https://seadatanet-buffer5.maris.nl/api_v5.1/reference_list/originator_edmo) | [optional] 
**measuring_area_type_l02** | **[str]** | Only one value is possble, See [reference list measuring_area_type_L02](https://seadatanet-buffer5.maris.nl/api_v5.1/reference_list/measuring_area_type_l02) | [optional] 
**parameters_p02** | **str** | if multiple options then use comma seperated values, See [reference list parameters_P02](https://seadatanet-buffer5.maris.nl/api_v5.1/reference_list/parameters_p02) | [optional] 
**parameters_p03** | **str** | if multiple options then use comma seperated values, See [reference list parameters_P03](https://seadatanet-buffer5.maris.nl/api_v5.1/reference_list/parameters_p03) | [optional] 
**parameters_p08** | **str** | if multiple options then use comma seperated values, See [reference list parameters_p08](https://seadatanet-buffer5.maris.nl/api_v5.1/reference_list/parameters_p08) | [optional] 
**custodium_edmo** | **str** | if multiple options then use comma seperated values, See [reference list custodium_edmo](https://seadatanet-buffer5.maris.nl/api_v5.1/reference_list/custodium_edmo) | [optional] 
**distributor_edmo** | **str** | if multiple options then use comma seperated values, See [reference list distributor_edmo](https://seadatanet-buffer5.maris.nl/api_v5.1/reference_list/distributor_edmo) | [optional] 
**any string name** | **bool, date, datetime, dict, float, int, list, str, none_type** | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


