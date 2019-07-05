# CheckpointCrmClient::PaymentsApi

All URIs are relative to *http://crm-dev.logus.pro/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**payments_create**](PaymentsApi.md#payments_create) | **POST** /payments/ | 
[**payments_delete**](PaymentsApi.md#payments_delete) | **DELETE** /payments/{id}/ | 
[**payments_list**](PaymentsApi.md#payments_list) | **GET** /payments/ | 
[**payments_partial_update**](PaymentsApi.md#payments_partial_update) | **PATCH** /payments/{id}/ | 
[**payments_read**](PaymentsApi.md#payments_read) | **GET** /payments/{id}/ | 
[**payments_update**](PaymentsApi.md#payments_update) | **PUT** /payments/{id}/ | 



## payments_create

> Payment payments_create(data)



List of order's payments

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

api_instance = CheckpointCrmClient::PaymentsApi.new
data = CheckpointCrmClient::Payment.new # Payment | 

begin
  result = api_instance.payments_create(data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling PaymentsApi->payments_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**Payment**](Payment.md)|  | 

### Return type

[**Payment**](Payment.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## payments_delete

> payments_delete(id)



List of order's payments

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

api_instance = CheckpointCrmClient::PaymentsApi.new
id = 'id_example' # String | 

begin
  api_instance.payments_delete(id)
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling PaymentsApi->payments_delete: #{e}"
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


## payments_list

> InlineResponse2007 payments_list(opts)



List of order's payments

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

api_instance = CheckpointCrmClient::PaymentsApi.new
opts = {
  page: 56 # Integer | A page number within the paginated result set.
}

begin
  result = api_instance.payments_list(opts)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling PaymentsApi->payments_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| A page number within the paginated result set. | [optional] 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## payments_partial_update

> Payment payments_partial_update(id, data)



List of order's payments

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

api_instance = CheckpointCrmClient::PaymentsApi.new
id = 'id_example' # String | 
data = CheckpointCrmClient::Payment.new # Payment | 

begin
  result = api_instance.payments_partial_update(id, data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling PaymentsApi->payments_partial_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **data** | [**Payment**](Payment.md)|  | 

### Return type

[**Payment**](Payment.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## payments_read

> Payment payments_read(id)



List of order's payments

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

api_instance = CheckpointCrmClient::PaymentsApi.new
id = 'id_example' # String | 

begin
  result = api_instance.payments_read(id)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling PaymentsApi->payments_read: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Payment**](Payment.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## payments_update

> Payment payments_update(id, data)



List of order's payments

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

api_instance = CheckpointCrmClient::PaymentsApi.new
id = 'id_example' # String | 
data = CheckpointCrmClient::Payment.new # Payment | 

begin
  result = api_instance.payments_update(id, data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling PaymentsApi->payments_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **data** | [**Payment**](Payment.md)|  | 

### Return type

[**Payment**](Payment.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

