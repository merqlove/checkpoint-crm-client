# CheckpointCrmClient::OrdersApi

All URIs are relative to *http://crm-dev.logus.pro/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**orders_create**](OrdersApi.md#orders_create) | **POST** /orders/ | 
[**orders_delete**](OrdersApi.md#orders_delete) | **DELETE** /orders/{id}/ | 
[**orders_extra_fields_delete**](OrdersApi.md#orders_extra_fields_delete) | **DELETE** /orders/{id}/extra-fields/{name}/ | 
[**orders_extra_fields_partial_update**](OrdersApi.md#orders_extra_fields_partial_update) | **PATCH** /orders/{id}/extra-fields/{name}/ | 
[**orders_extra_fields_read**](OrdersApi.md#orders_extra_fields_read) | **GET** /orders/{id}/extra-fields/{name}/ | 
[**orders_list**](OrdersApi.md#orders_list) | **GET** /orders/ | 
[**orders_partial_update**](OrdersApi.md#orders_partial_update) | **PATCH** /orders/{id}/ | 
[**orders_read**](OrdersApi.md#orders_read) | **GET** /orders/{id}/ | 
[**orders_update**](OrdersApi.md#orders_update) | **PUT** /orders/{id}/ | 



## orders_create

> Order orders_create(data)



Presents list of previous and current guest's orders

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

api_instance = CheckpointCrmClient::OrdersApi.new
data = CheckpointCrmClient::Order.new # Order | 

begin
  result = api_instance.orders_create(data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling OrdersApi->orders_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**Order**](Order.md)|  | 

### Return type

[**Order**](Order.md)

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## orders_delete

> orders_delete(id)



Presents list of previous and current guest's orders

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

api_instance = CheckpointCrmClient::OrdersApi.new
id = 56 # Integer | A unique integer value identifying this заказ.

begin
  api_instance.orders_delete(id)
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling OrdersApi->orders_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| A unique integer value identifying this заказ. | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## orders_extra_fields_delete

> orders_extra_fields_delete(id, name)



Presents list of previous and current guest's orders

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

api_instance = CheckpointCrmClient::OrdersApi.new
id = 56 # Integer | A unique integer value identifying this заказ.
name = 'name_example' # String | 

begin
  api_instance.orders_extra_fields_delete(id, name)
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling OrdersApi->orders_extra_fields_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| A unique integer value identifying this заказ. | 
 **name** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## orders_extra_fields_partial_update

> Order orders_extra_fields_partial_update(id, name, data)



Presents list of previous and current guest's orders

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

api_instance = CheckpointCrmClient::OrdersApi.new
id = 56 # Integer | A unique integer value identifying this заказ.
name = 'name_example' # String | 
data = CheckpointCrmClient::Order.new # Order | 

begin
  result = api_instance.orders_extra_fields_partial_update(id, name, data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling OrdersApi->orders_extra_fields_partial_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| A unique integer value identifying this заказ. | 
 **name** | **String**|  | 
 **data** | [**Order**](Order.md)|  | 

### Return type

[**Order**](Order.md)

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## orders_extra_fields_read

> OrderSerializerNoBinaryFields orders_extra_fields_read(id, name)



Presents list of previous and current guest's orders

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

api_instance = CheckpointCrmClient::OrdersApi.new
id = 56 # Integer | A unique integer value identifying this заказ.
name = 'name_example' # String | 

begin
  result = api_instance.orders_extra_fields_read(id, name)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling OrdersApi->orders_extra_fields_read: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| A unique integer value identifying this заказ. | 
 **name** | **String**|  | 

### Return type

[**OrderSerializerNoBinaryFields**](OrderSerializerNoBinaryFields.md)

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## orders_list

> InlineResponse2006 orders_list(opts)



Presents list of previous and current guest's orders

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

api_instance = CheckpointCrmClient::OrdersApi.new
opts = {
  page: 56 # Integer | A page number within the paginated result set.
}

begin
  result = api_instance.orders_list(opts)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling OrdersApi->orders_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| A page number within the paginated result set. | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## orders_partial_update

> Order orders_partial_update(id, data)



Presents list of previous and current guest's orders

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

api_instance = CheckpointCrmClient::OrdersApi.new
id = 56 # Integer | A unique integer value identifying this заказ.
data = CheckpointCrmClient::Order.new # Order | 

begin
  result = api_instance.orders_partial_update(id, data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling OrdersApi->orders_partial_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| A unique integer value identifying this заказ. | 
 **data** | [**Order**](Order.md)|  | 

### Return type

[**Order**](Order.md)

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## orders_read

> OrderSerializerNoBinaryFields orders_read(id)



Presents list of previous and current guest's orders

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

api_instance = CheckpointCrmClient::OrdersApi.new
id = 56 # Integer | A unique integer value identifying this заказ.

begin
  result = api_instance.orders_read(id)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling OrdersApi->orders_read: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| A unique integer value identifying this заказ. | 

### Return type

[**OrderSerializerNoBinaryFields**](OrderSerializerNoBinaryFields.md)

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## orders_update

> Order orders_update(id, data)



Presents list of previous and current guest's orders

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

api_instance = CheckpointCrmClient::OrdersApi.new
id = 56 # Integer | A unique integer value identifying this заказ.
data = CheckpointCrmClient::Order.new # Order | 

begin
  result = api_instance.orders_update(id, data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling OrdersApi->orders_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| A unique integer value identifying this заказ. | 
 **data** | [**Order**](Order.md)|  | 

### Return type

[**Order**](Order.md)

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

