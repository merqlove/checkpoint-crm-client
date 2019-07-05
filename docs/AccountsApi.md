# CheckpointCrmClient::AccountsApi

All URIs are relative to *http://crm-dev.logus.pro/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accounts_charge**](AccountsApi.md#accounts_charge) | **POST** /accounts/charge/ | 
[**accounts_create**](AccountsApi.md#accounts_create) | **POST** /accounts/ | 
[**accounts_delete**](AccountsApi.md#accounts_delete) | **DELETE** /accounts/{id}/ | 
[**accounts_list**](AccountsApi.md#accounts_list) | **GET** /accounts/ | 
[**accounts_partial_update**](AccountsApi.md#accounts_partial_update) | **PATCH** /accounts/{id}/ | 
[**accounts_read**](AccountsApi.md#accounts_read) | **GET** /accounts/{id}/ | 
[**accounts_update**](AccountsApi.md#accounts_update) | **PUT** /accounts/{id}/ | 



## accounts_charge

> Account accounts_charge(data)



Осуществляет списание баллов со счёта гостя. В качестве идентификаторов могут выступать как идентификатор счёта, так и номер карты лояльности. Допускаются ссылки на заказы, в рамках которых происходит оплата.

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

api_instance = CheckpointCrmClient::AccountsApi.new
data = CheckpointCrmClient::Account.new # Account | 

begin
  result = api_instance.accounts_charge(data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling AccountsApi->accounts_charge: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**Account**](Account.md)|  | 

### Return type

[**Account**](Account.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## accounts_create

> Account accounts_create(data)



Account is the place where all bonus points balance is tracked. Points are tracked in two categories - payment and level. Payment points can be used to pay orders, level points move customer through levels/tiers.

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

api_instance = CheckpointCrmClient::AccountsApi.new
data = CheckpointCrmClient::Account.new # Account | 

begin
  result = api_instance.accounts_create(data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling AccountsApi->accounts_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**Account**](Account.md)|  | 

### Return type

[**Account**](Account.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## accounts_delete

> accounts_delete(id)



Account is the place where all bonus points balance is tracked. Points are tracked in two categories - payment and level. Payment points can be used to pay orders, level points move customer through levels/tiers.

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

api_instance = CheckpointCrmClient::AccountsApi.new
id = 56 # Integer | A unique integer value identifying this счет.

begin
  api_instance.accounts_delete(id)
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling AccountsApi->accounts_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| A unique integer value identifying this счет. | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## accounts_list

> InlineResponse2001 accounts_list(opts)



Account is the place where all bonus points balance is tracked. Points are tracked in two categories - payment and level. Payment points can be used to pay orders, level points move customer through levels/tiers.

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

api_instance = CheckpointCrmClient::AccountsApi.new
opts = {
  page: 56 # Integer | A page number within the paginated result set.
}

begin
  result = api_instance.accounts_list(opts)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling AccountsApi->accounts_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| A page number within the paginated result set. | [optional] 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## accounts_partial_update

> Account accounts_partial_update(id, data)



Account is the place where all bonus points balance is tracked. Points are tracked in two categories - payment and level. Payment points can be used to pay orders, level points move customer through levels/tiers.

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

api_instance = CheckpointCrmClient::AccountsApi.new
id = 56 # Integer | A unique integer value identifying this счет.
data = CheckpointCrmClient::Account.new # Account | 

begin
  result = api_instance.accounts_partial_update(id, data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling AccountsApi->accounts_partial_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| A unique integer value identifying this счет. | 
 **data** | [**Account**](Account.md)|  | 

### Return type

[**Account**](Account.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## accounts_read

> Account accounts_read(id)



Account is the place where all bonus points balance is tracked. Points are tracked in two categories - payment and level. Payment points can be used to pay orders, level points move customer through levels/tiers.

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

api_instance = CheckpointCrmClient::AccountsApi.new
id = 56 # Integer | A unique integer value identifying this счет.

begin
  result = api_instance.accounts_read(id)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling AccountsApi->accounts_read: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| A unique integer value identifying this счет. | 

### Return type

[**Account**](Account.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## accounts_update

> Account accounts_update(id, data)



Account is the place where all bonus points balance is tracked. Points are tracked in two categories - payment and level. Payment points can be used to pay orders, level points move customer through levels/tiers.

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

api_instance = CheckpointCrmClient::AccountsApi.new
id = 56 # Integer | A unique integer value identifying this счет.
data = CheckpointCrmClient::Account.new # Account | 

begin
  result = api_instance.accounts_update(id, data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling AccountsApi->accounts_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| A unique integer value identifying this счет. | 
 **data** | [**Account**](Account.md)|  | 

### Return type

[**Account**](Account.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

