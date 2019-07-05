# CheckpointCrmClient::SettingsApi

All URIs are relative to *http://crm-dev.logus.pro/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**settings_list**](SettingsApi.md#settings_list) | **GET** /settings/ | 
[**settings_read**](SettingsApi.md#settings_read) | **GET** /settings/{id}/ | 



## settings_list

> InlineResponse20010 settings_list(opts)



Loyalty system's settings resource

### Example

```ruby
# load the gem
require 'checkpoint-crm-client'
# setup authorization
CheckpointCrmClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = CheckpointCrmClient::SettingsApi.new
opts = {
  page: 56 # Integer | A page number within the paginated result set.
}

begin
  result = api_instance.settings_list(opts)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling SettingsApi->settings_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| A page number within the paginated result set. | [optional] 

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## settings_read

> Setting settings_read(id)



Loyalty system's settings resource

### Example

```ruby
# load the gem
require 'checkpoint-crm-client'
# setup authorization
CheckpointCrmClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = CheckpointCrmClient::SettingsApi.new
id = 56 # Integer | A unique integer value identifying this настройки.

begin
  result = api_instance.settings_read(id)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling SettingsApi->settings_read: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| A unique integer value identifying this настройки. | 

### Return type

[**Setting**](Setting.md)

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

