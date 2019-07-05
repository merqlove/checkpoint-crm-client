# CheckpointCrmClient::AccountOperationsApi

All URIs are relative to *http://crm-dev.logus.pro/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**account_operations_create**](AccountOperationsApi.md#account_operations_create) | **POST** /account-operations/ | 
[**account_operations_delete**](AccountOperationsApi.md#account_operations_delete) | **DELETE** /account-operations/{id}/ | 
[**account_operations_list**](AccountOperationsApi.md#account_operations_list) | **GET** /account-operations/ | 
[**account_operations_partial_update**](AccountOperationsApi.md#account_operations_partial_update) | **PATCH** /account-operations/{id}/ | 
[**account_operations_read**](AccountOperationsApi.md#account_operations_read) | **GET** /account-operations/{id}/ | 
[**account_operations_update**](AccountOperationsApi.md#account_operations_update) | **PUT** /account-operations/{id}/ | 



## account_operations_create

> AccountOperation account_operations_create(data)



Account operation represents transaction for charging or posting payment and level bonuses on customer's account.

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

api_instance = CheckpointCrmClient::AccountOperationsApi.new
data = CheckpointCrmClient::AccountOperation.new # AccountOperation | 

begin
  result = api_instance.account_operations_create(data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling AccountOperationsApi->account_operations_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**AccountOperation**](AccountOperation.md)|  | 

### Return type

[**AccountOperation**](AccountOperation.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## account_operations_delete

> account_operations_delete(id)



Account operation represents transaction for charging or posting payment and level bonuses on customer's account.

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

api_instance = CheckpointCrmClient::AccountOperationsApi.new
id = 56 # Integer | A unique integer value identifying this операция по счёту.

begin
  api_instance.account_operations_delete(id)
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling AccountOperationsApi->account_operations_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| A unique integer value identifying this операция по счёту. | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## account_operations_list

> InlineResponse200 account_operations_list(opts)



Account operation represents transaction for charging or posting payment and level bonuses on customer's account.

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

api_instance = CheckpointCrmClient::AccountOperationsApi.new
opts = {
  account_id: 'account_id_example', # String | 
  order__external_id: 'order__external_id_example', # String | 
  rule_id: 'rule_id_example', # String | 
  bonus_type: 'bonus_type_example', # String | 
  point_of_sale__code: 'point_of_sale__code_example', # String | 
  external_id: 'external_id_example', # String | 
  page: 56 # Integer | A page number within the paginated result set.
}

begin
  result = api_instance.account_operations_list(opts)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling AccountOperationsApi->account_operations_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | [optional] 
 **order__external_id** | **String**|  | [optional] 
 **rule_id** | **String**|  | [optional] 
 **bonus_type** | **String**|  | [optional] 
 **point_of_sale__code** | **String**|  | [optional] 
 **external_id** | **String**|  | [optional] 
 **page** | **Integer**| A page number within the paginated result set. | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## account_operations_partial_update

> AccountOperation account_operations_partial_update(id, data)



Account operation represents transaction for charging or posting payment and level bonuses on customer's account.

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

api_instance = CheckpointCrmClient::AccountOperationsApi.new
id = 56 # Integer | A unique integer value identifying this операция по счёту.
data = CheckpointCrmClient::AccountOperation.new # AccountOperation | 

begin
  result = api_instance.account_operations_partial_update(id, data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling AccountOperationsApi->account_operations_partial_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| A unique integer value identifying this операция по счёту. | 
 **data** | [**AccountOperation**](AccountOperation.md)|  | 

### Return type

[**AccountOperation**](AccountOperation.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## account_operations_read

> AccountOperation account_operations_read(id)



Account operation represents transaction for charging or posting payment and level bonuses on customer's account.

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

api_instance = CheckpointCrmClient::AccountOperationsApi.new
id = 56 # Integer | A unique integer value identifying this операция по счёту.

begin
  result = api_instance.account_operations_read(id)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling AccountOperationsApi->account_operations_read: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| A unique integer value identifying this операция по счёту. | 

### Return type

[**AccountOperation**](AccountOperation.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## account_operations_update

> AccountOperation account_operations_update(id, data)



Account operation represents transaction for charging or posting payment and level bonuses on customer's account.

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

api_instance = CheckpointCrmClient::AccountOperationsApi.new
id = 56 # Integer | A unique integer value identifying this операция по счёту.
data = CheckpointCrmClient::AccountOperation.new # AccountOperation | 

begin
  result = api_instance.account_operations_update(id, data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling AccountOperationsApi->account_operations_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| A unique integer value identifying this операция по счёту. | 
 **data** | [**AccountOperation**](AccountOperation.md)|  | 

### Return type

[**AccountOperation**](AccountOperation.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

