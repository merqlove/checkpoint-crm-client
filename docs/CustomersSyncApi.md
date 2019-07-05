# CheckpointCrmClient::CustomersSyncApi

All URIs are relative to *http://crm-dev.logus.pro/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**customers_sync_create**](CustomersSyncApi.md#customers_sync_create) | **POST** /customers-sync/ | 



## customers_sync_create

> customers_sync_create



Performs synchronization of customer by customizable key fields. By default they are phone number, last name and birth date. If customer with such combination will not be found, it will be created. In other case it will be updated :return: Created or updated customer instance

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

api_instance = CheckpointCrmClient::CustomersSyncApi.new

begin
  api_instance.customers_sync_create
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling CustomersSyncApi->customers_sync_create: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

