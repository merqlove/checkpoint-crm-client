# CheckpointCrmClient::PointOfSalesApi

All URIs are relative to *http://crm-dev.logus.pro/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**point_of_sales_create**](PointOfSalesApi.md#point_of_sales_create) | **POST** /point-of-sales/ | 
[**point_of_sales_delete**](PointOfSalesApi.md#point_of_sales_delete) | **DELETE** /point-of-sales/{id}/ | 
[**point_of_sales_list**](PointOfSalesApi.md#point_of_sales_list) | **GET** /point-of-sales/ | 
[**point_of_sales_orders_eid_create**](PointOfSalesApi.md#point_of_sales_orders_eid_create) | **POST** /point-of-sales/{pos_code}/orders/eid/{external_id}/ | 
[**point_of_sales_orders_eid_read**](PointOfSalesApi.md#point_of_sales_orders_eid_read) | **GET** /point-of-sales/{pos_code}/orders/eid/{external_id}/ | 
[**point_of_sales_partial_update**](PointOfSalesApi.md#point_of_sales_partial_update) | **PATCH** /point-of-sales/{id}/ | 
[**point_of_sales_read**](PointOfSalesApi.md#point_of_sales_read) | **GET** /point-of-sales/{id}/ | 
[**point_of_sales_update**](PointOfSalesApi.md#point_of_sales_update) | **PUT** /point-of-sales/{id}/ | 



## point_of_sales_create

> PointOfSale point_of_sales_create(data)



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

api_instance = CheckpointCrmClient::PointOfSalesApi.new
data = CheckpointCrmClient::PointOfSale.new # PointOfSale | 

begin
  result = api_instance.point_of_sales_create(data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling PointOfSalesApi->point_of_sales_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**PointOfSale**](PointOfSale.md)|  | 

### Return type

[**PointOfSale**](PointOfSale.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## point_of_sales_delete

> point_of_sales_delete(id)



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

api_instance = CheckpointCrmClient::PointOfSalesApi.new
id = 56 # Integer | A unique integer value identifying this точка продаж.

begin
  api_instance.point_of_sales_delete(id)
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling PointOfSalesApi->point_of_sales_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| A unique integer value identifying this точка продаж. | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## point_of_sales_list

> InlineResponse2008 point_of_sales_list(opts)



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

api_instance = CheckpointCrmClient::PointOfSalesApi.new
opts = {
  code: 'code_example', # String | 
  name: 'name_example', # String | 
  page: 56 # Integer | A page number within the paginated result set.
}

begin
  result = api_instance.point_of_sales_list(opts)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling PointOfSalesApi->point_of_sales_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 
 **page** | **Integer**| A page number within the paginated result set. | [optional] 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## point_of_sales_orders_eid_create

> point_of_sales_orders_eid_create(external_id, pos_code)



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

api_instance = CheckpointCrmClient::PointOfSalesApi.new
external_id = 'external_id_example' # String | 
pos_code = 'pos_code_example' # String | 

begin
  api_instance.point_of_sales_orders_eid_create(external_id, pos_code)
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling PointOfSalesApi->point_of_sales_orders_eid_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_id** | **String**|  | 
 **pos_code** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## point_of_sales_orders_eid_read

> point_of_sales_orders_eid_read(external_id, pos_code)



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

api_instance = CheckpointCrmClient::PointOfSalesApi.new
external_id = 'external_id_example' # String | 
pos_code = 'pos_code_example' # String | 

begin
  api_instance.point_of_sales_orders_eid_read(external_id, pos_code)
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling PointOfSalesApi->point_of_sales_orders_eid_read: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_id** | **String**|  | 
 **pos_code** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## point_of_sales_partial_update

> PointOfSale point_of_sales_partial_update(id, data)



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

api_instance = CheckpointCrmClient::PointOfSalesApi.new
id = 56 # Integer | A unique integer value identifying this точка продаж.
data = CheckpointCrmClient::PointOfSale.new # PointOfSale | 

begin
  result = api_instance.point_of_sales_partial_update(id, data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling PointOfSalesApi->point_of_sales_partial_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| A unique integer value identifying this точка продаж. | 
 **data** | [**PointOfSale**](PointOfSale.md)|  | 

### Return type

[**PointOfSale**](PointOfSale.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## point_of_sales_read

> PointOfSale point_of_sales_read(id)



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

api_instance = CheckpointCrmClient::PointOfSalesApi.new
id = 56 # Integer | A unique integer value identifying this точка продаж.

begin
  result = api_instance.point_of_sales_read(id)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling PointOfSalesApi->point_of_sales_read: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| A unique integer value identifying this точка продаж. | 

### Return type

[**PointOfSale**](PointOfSale.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## point_of_sales_update

> PointOfSale point_of_sales_update(id, data)



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

api_instance = CheckpointCrmClient::PointOfSalesApi.new
id = 56 # Integer | A unique integer value identifying this точка продаж.
data = CheckpointCrmClient::PointOfSale.new # PointOfSale | 

begin
  result = api_instance.point_of_sales_update(id, data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling PointOfSalesApi->point_of_sales_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| A unique integer value identifying this точка продаж. | 
 **data** | [**PointOfSale**](PointOfSale.md)|  | 

### Return type

[**PointOfSale**](PointOfSale.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

