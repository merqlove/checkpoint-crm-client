# CheckpointCrmClient::TiersApi

All URIs are relative to *http://crm-dev.logus.pro/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tiers_create**](TiersApi.md#tiers_create) | **POST** /tiers/ | 
[**tiers_delete**](TiersApi.md#tiers_delete) | **DELETE** /tiers/{id}/ | 
[**tiers_list**](TiersApi.md#tiers_list) | **GET** /tiers/ | 
[**tiers_partial_update**](TiersApi.md#tiers_partial_update) | **PATCH** /tiers/{id}/ | 
[**tiers_read**](TiersApi.md#tiers_read) | **GET** /tiers/{id}/ | 
[**tiers_update**](TiersApi.md#tiers_update) | **PUT** /tiers/{id}/ | 



## tiers_create

> Tier tiers_create(data)



Loyalty tiers are \"levels\" that can give different privileges and reward rules

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

api_instance = CheckpointCrmClient::TiersApi.new
data = CheckpointCrmClient::Tier.new # Tier | 

begin
  result = api_instance.tiers_create(data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling TiersApi->tiers_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**Tier**](Tier.md)|  | 

### Return type

[**Tier**](Tier.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## tiers_delete

> tiers_delete(id)



Loyalty tiers are \"levels\" that can give different privileges and reward rules

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

api_instance = CheckpointCrmClient::TiersApi.new
id = 56 # Integer | A unique integer value identifying this уровень.

begin
  api_instance.tiers_delete(id)
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling TiersApi->tiers_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| A unique integer value identifying this уровень. | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## tiers_list

> InlineResponse20011 tiers_list(opts)



Loyalty tiers are \"levels\" that can give different privileges and reward rules

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

api_instance = CheckpointCrmClient::TiersApi.new
opts = {
  page: 56 # Integer | A page number within the paginated result set.
}

begin
  result = api_instance.tiers_list(opts)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling TiersApi->tiers_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| A page number within the paginated result set. | [optional] 

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tiers_partial_update

> Tier tiers_partial_update(id, data)



Loyalty tiers are \"levels\" that can give different privileges and reward rules

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

api_instance = CheckpointCrmClient::TiersApi.new
id = 56 # Integer | A unique integer value identifying this уровень.
data = CheckpointCrmClient::Tier.new # Tier | 

begin
  result = api_instance.tiers_partial_update(id, data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling TiersApi->tiers_partial_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| A unique integer value identifying this уровень. | 
 **data** | [**Tier**](Tier.md)|  | 

### Return type

[**Tier**](Tier.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## tiers_read

> Tier tiers_read(id)



Loyalty tiers are \"levels\" that can give different privileges and reward rules

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

api_instance = CheckpointCrmClient::TiersApi.new
id = 56 # Integer | A unique integer value identifying this уровень.

begin
  result = api_instance.tiers_read(id)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling TiersApi->tiers_read: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| A unique integer value identifying this уровень. | 

### Return type

[**Tier**](Tier.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tiers_update

> Tier tiers_update(id, data)



Loyalty tiers are \"levels\" that can give different privileges and reward rules

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

api_instance = CheckpointCrmClient::TiersApi.new
id = 56 # Integer | A unique integer value identifying this уровень.
data = CheckpointCrmClient::Tier.new # Tier | 

begin
  result = api_instance.tiers_update(id, data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling TiersApi->tiers_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| A unique integer value identifying this уровень. | 
 **data** | [**Tier**](Tier.md)|  | 

### Return type

[**Tier**](Tier.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

