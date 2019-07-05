# CheckpointCrmClient::OrderItemsApi

All URIs are relative to *http://crm-dev.logus.pro/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**order_items_create**](OrderItemsApi.md#order_items_create) | **POST** /order-items/ | 
[**order_items_delete**](OrderItemsApi.md#order_items_delete) | **DELETE** /order-items/{id}/ | 
[**order_items_list**](OrderItemsApi.md#order_items_list) | **GET** /order-items/ | 
[**order_items_partial_update**](OrderItemsApi.md#order_items_partial_update) | **PATCH** /order-items/{id}/ | 
[**order_items_read**](OrderItemsApi.md#order_items_read) | **GET** /order-items/{id}/ | 
[**order_items_update**](OrderItemsApi.md#order_items_update) | **PUT** /order-items/{id}/ | 



## order_items_create

> OrderItem order_items_create(data)



List of services within order

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

api_instance = CheckpointCrmClient::OrderItemsApi.new
data = CheckpointCrmClient::OrderItem.new # OrderItem | 

begin
  result = api_instance.order_items_create(data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling OrderItemsApi->order_items_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**OrderItem**](OrderItem.md)|  | 

### Return type

[**OrderItem**](OrderItem.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## order_items_delete

> order_items_delete(id)



List of services within order

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

api_instance = CheckpointCrmClient::OrderItemsApi.new
id = 'id_example' # String | 

begin
  api_instance.order_items_delete(id)
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling OrderItemsApi->order_items_delete: #{e}"
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


## order_items_list

> InlineResponse2005 order_items_list(opts)



List of services within order

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

api_instance = CheckpointCrmClient::OrderItemsApi.new
opts = {
  page: 56 # Integer | A page number within the paginated result set.
}

begin
  result = api_instance.order_items_list(opts)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling OrderItemsApi->order_items_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| A page number within the paginated result set. | [optional] 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## order_items_partial_update

> OrderItem order_items_partial_update(id, data)



List of services within order

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

api_instance = CheckpointCrmClient::OrderItemsApi.new
id = 'id_example' # String | 
data = CheckpointCrmClient::OrderItem.new # OrderItem | 

begin
  result = api_instance.order_items_partial_update(id, data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling OrderItemsApi->order_items_partial_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **data** | [**OrderItem**](OrderItem.md)|  | 

### Return type

[**OrderItem**](OrderItem.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## order_items_read

> OrderItem order_items_read(id)



List of services within order

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

api_instance = CheckpointCrmClient::OrderItemsApi.new
id = 'id_example' # String | 

begin
  result = api_instance.order_items_read(id)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling OrderItemsApi->order_items_read: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**OrderItem**](OrderItem.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## order_items_update

> OrderItem order_items_update(id, data)



List of services within order

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

api_instance = CheckpointCrmClient::OrderItemsApi.new
id = 'id_example' # String | 
data = CheckpointCrmClient::OrderItem.new # OrderItem | 

begin
  result = api_instance.order_items_update(id, data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling OrderItemsApi->order_items_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **data** | [**OrderItem**](OrderItem.md)|  | 

### Return type

[**OrderItem**](OrderItem.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

