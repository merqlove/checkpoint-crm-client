# CheckpointCrmClient::PreferenceCategoriesApi

All URIs are relative to *http://crm-dev.logus.pro/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**preference_categories_create**](PreferenceCategoriesApi.md#preference_categories_create) | **POST** /preference-categories/ | 
[**preference_categories_delete**](PreferenceCategoriesApi.md#preference_categories_delete) | **DELETE** /preference-categories/{id}/ | 
[**preference_categories_list**](PreferenceCategoriesApi.md#preference_categories_list) | **GET** /preference-categories/ | 
[**preference_categories_partial_update**](PreferenceCategoriesApi.md#preference_categories_partial_update) | **PATCH** /preference-categories/{id}/ | 
[**preference_categories_read**](PreferenceCategoriesApi.md#preference_categories_read) | **GET** /preference-categories/{id}/ | 
[**preference_categories_update**](PreferenceCategoriesApi.md#preference_categories_update) | **PUT** /preference-categories/{id}/ | 



## preference_categories_create

> PreferenceCategories preference_categories_create(data)



Customer preferences

### Example

```ruby
# load the gem
require 'checkpoint-crm-client'
# setup authorization
CheckpointCrmClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CheckpointCrmClient::PreferenceCategoriesApi.new
data = CheckpointCrmClient::PreferenceCategories.new # PreferenceCategories | 

begin
  result = api_instance.preference_categories_create(data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling PreferenceCategoriesApi->preference_categories_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**PreferenceCategories**](PreferenceCategories.md)|  | 

### Return type

[**PreferenceCategories**](PreferenceCategories.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## preference_categories_delete

> preference_categories_delete(id)



Customer preferences

### Example

```ruby
# load the gem
require 'checkpoint-crm-client'
# setup authorization
CheckpointCrmClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CheckpointCrmClient::PreferenceCategoriesApi.new
id = 56 # Integer | A unique integer value identifying this категория предпочтений.

begin
  api_instance.preference_categories_delete(id)
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling PreferenceCategoriesApi->preference_categories_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| A unique integer value identifying this категория предпочтений. | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## preference_categories_list

> InlineResponse2009 preference_categories_list(opts)



Customer preferences

### Example

```ruby
# load the gem
require 'checkpoint-crm-client'
# setup authorization
CheckpointCrmClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CheckpointCrmClient::PreferenceCategoriesApi.new
opts = {
  page: 56 # Integer | A page number within the paginated result set.
}

begin
  result = api_instance.preference_categories_list(opts)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling PreferenceCategoriesApi->preference_categories_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| A page number within the paginated result set. | [optional] 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## preference_categories_partial_update

> PreferenceCategories preference_categories_partial_update(id, data)



Customer preferences

### Example

```ruby
# load the gem
require 'checkpoint-crm-client'
# setup authorization
CheckpointCrmClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CheckpointCrmClient::PreferenceCategoriesApi.new
id = 56 # Integer | A unique integer value identifying this категория предпочтений.
data = CheckpointCrmClient::PreferenceCategories.new # PreferenceCategories | 

begin
  result = api_instance.preference_categories_partial_update(id, data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling PreferenceCategoriesApi->preference_categories_partial_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| A unique integer value identifying this категория предпочтений. | 
 **data** | [**PreferenceCategories**](PreferenceCategories.md)|  | 

### Return type

[**PreferenceCategories**](PreferenceCategories.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## preference_categories_read

> PreferenceCategories preference_categories_read(id)



Customer preferences

### Example

```ruby
# load the gem
require 'checkpoint-crm-client'
# setup authorization
CheckpointCrmClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CheckpointCrmClient::PreferenceCategoriesApi.new
id = 56 # Integer | A unique integer value identifying this категория предпочтений.

begin
  result = api_instance.preference_categories_read(id)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling PreferenceCategoriesApi->preference_categories_read: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| A unique integer value identifying this категория предпочтений. | 

### Return type

[**PreferenceCategories**](PreferenceCategories.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## preference_categories_update

> PreferenceCategories preference_categories_update(id, data)



Customer preferences

### Example

```ruby
# load the gem
require 'checkpoint-crm-client'
# setup authorization
CheckpointCrmClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CheckpointCrmClient::PreferenceCategoriesApi.new
id = 56 # Integer | A unique integer value identifying this категория предпочтений.
data = CheckpointCrmClient::PreferenceCategories.new # PreferenceCategories | 

begin
  result = api_instance.preference_categories_update(id, data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling PreferenceCategoriesApi->preference_categories_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| A unique integer value identifying this категория предпочтений. | 
 **data** | [**PreferenceCategories**](PreferenceCategories.md)|  | 

### Return type

[**PreferenceCategories**](PreferenceCategories.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

