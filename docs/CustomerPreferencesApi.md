# CheckpointCrmClient::CustomerPreferencesApi

All URIs are relative to *http://crm-dev.logus.pro/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**customer_preferences_create**](CustomerPreferencesApi.md#customer_preferences_create) | **POST** /customer-preferences/ | 
[**customer_preferences_delete**](CustomerPreferencesApi.md#customer_preferences_delete) | **DELETE** /customer-preferences/{id}/ | 
[**customer_preferences_list**](CustomerPreferencesApi.md#customer_preferences_list) | **GET** /customer-preferences/ | 
[**customer_preferences_partial_update**](CustomerPreferencesApi.md#customer_preferences_partial_update) | **PATCH** /customer-preferences/{id}/ | 
[**customer_preferences_read**](CustomerPreferencesApi.md#customer_preferences_read) | **GET** /customer-preferences/{id}/ | 
[**customer_preferences_update**](CustomerPreferencesApi.md#customer_preferences_update) | **PUT** /customer-preferences/{id}/ | 



## customer_preferences_create

> CustomerPreferences customer_preferences_create(data)



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

api_instance = CheckpointCrmClient::CustomerPreferencesApi.new
data = CheckpointCrmClient::CustomerPreferences.new # CustomerPreferences | 

begin
  result = api_instance.customer_preferences_create(data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling CustomerPreferencesApi->customer_preferences_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**CustomerPreferences**](CustomerPreferences.md)|  | 

### Return type

[**CustomerPreferences**](CustomerPreferences.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## customer_preferences_delete

> customer_preferences_delete(id)



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

api_instance = CheckpointCrmClient::CustomerPreferencesApi.new
id = 'id_example' # String | 

begin
  api_instance.customer_preferences_delete(id)
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling CustomerPreferencesApi->customer_preferences_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## customer_preferences_list

> InlineResponse2003 customer_preferences_list(opts)



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

api_instance = CheckpointCrmClient::CustomerPreferencesApi.new
opts = {
  page: 56 # Integer | A page number within the paginated result set.
}

begin
  result = api_instance.customer_preferences_list(opts)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling CustomerPreferencesApi->customer_preferences_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| A page number within the paginated result set. | [optional] 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## customer_preferences_partial_update

> CustomerPreferences customer_preferences_partial_update(id, data)



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

api_instance = CheckpointCrmClient::CustomerPreferencesApi.new
id = 'id_example' # String | 
data = CheckpointCrmClient::CustomerPreferences.new # CustomerPreferences | 

begin
  result = api_instance.customer_preferences_partial_update(id, data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling CustomerPreferencesApi->customer_preferences_partial_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **data** | [**CustomerPreferences**](CustomerPreferences.md)|  | 

### Return type

[**CustomerPreferences**](CustomerPreferences.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## customer_preferences_read

> CustomerPreferences customer_preferences_read(id)



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

api_instance = CheckpointCrmClient::CustomerPreferencesApi.new
id = 'id_example' # String | 

begin
  result = api_instance.customer_preferences_read(id)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling CustomerPreferencesApi->customer_preferences_read: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**CustomerPreferences**](CustomerPreferences.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## customer_preferences_update

> CustomerPreferences customer_preferences_update(id, data)



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

api_instance = CheckpointCrmClient::CustomerPreferencesApi.new
id = 'id_example' # String | 
data = CheckpointCrmClient::CustomerPreferences.new # CustomerPreferences | 

begin
  result = api_instance.customer_preferences_update(id, data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling CustomerPreferencesApi->customer_preferences_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **data** | [**CustomerPreferences**](CustomerPreferences.md)|  | 

### Return type

[**CustomerPreferences**](CustomerPreferences.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

