# CheckpointCrmClient::CardsApi

All URIs are relative to *http://crm-dev.logus.pro/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cards_create**](CardsApi.md#cards_create) | **POST** /cards/ | 
[**cards_delete**](CardsApi.md#cards_delete) | **DELETE** /cards/{id}/ | 
[**cards_deposit**](CardsApi.md#cards_deposit) | **POST** /cards/deposit/ | 
[**cards_emit**](CardsApi.md#cards_emit) | **POST** /cards/emit/ | 
[**cards_list**](CardsApi.md#cards_list) | **GET** /cards/ | 
[**cards_partial_update**](CardsApi.md#cards_partial_update) | **PATCH** /cards/{id}/ | 
[**cards_read**](CardsApi.md#cards_read) | **GET** /cards/{id}/ | 
[**cards_update**](CardsApi.md#cards_update) | **PUT** /cards/{id}/ | 



## cards_create

> Card cards_create(data)



List of loyalty cards. Each card bounds customer and his account. Several cards can be bound to same customer (customer own several accounts), at the same time several of them can be bound to same account (serveral family cards, for example)

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

api_instance = CheckpointCrmClient::CardsApi.new
data = CheckpointCrmClient::Card.new # Card | 

begin
  result = api_instance.cards_create(data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling CardsApi->cards_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**Card**](Card.md)|  | 

### Return type

[**Card**](Card.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## cards_delete

> cards_delete(id)



List of loyalty cards. Each card bounds customer and his account. Several cards can be bound to same customer (customer own several accounts), at the same time several of them can be bound to same account (serveral family cards, for example)

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

api_instance = CheckpointCrmClient::CardsApi.new
id = 'id_example' # String | 

begin
  api_instance.cards_delete(id)
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling CardsApi->cards_delete: #{e}"
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


## cards_deposit

> Card cards_deposit(data)



\" Manual deposit bonus points to the customer or card.

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

api_instance = CheckpointCrmClient::CardsApi.new
data = CheckpointCrmClient::Card.new # Card | 

begin
  result = api_instance.cards_deposit(data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling CardsApi->cards_deposit: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**Card**](Card.md)|  | 

### Return type

[**Card**](Card.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## cards_emit

> Card cards_emit(data)



\" Emit (create) new cards.

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

api_instance = CheckpointCrmClient::CardsApi.new
data = CheckpointCrmClient::Card.new # Card | 

begin
  result = api_instance.cards_emit(data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling CardsApi->cards_emit: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**Card**](Card.md)|  | 

### Return type

[**Card**](Card.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## cards_list

> InlineResponse2002 cards_list(opts)



List of loyalty cards. Each card bounds customer and his account. Several cards can be bound to same customer (customer own several accounts), at the same time several of them can be bound to same account (serveral family cards, for example)

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

api_instance = CheckpointCrmClient::CardsApi.new
opts = {
  page: 56 # Integer | A page number within the paginated result set.
}

begin
  result = api_instance.cards_list(opts)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling CardsApi->cards_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| A page number within the paginated result set. | [optional] 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## cards_partial_update

> Card cards_partial_update(id, data)



List of loyalty cards. Each card bounds customer and his account. Several cards can be bound to same customer (customer own several accounts), at the same time several of them can be bound to same account (serveral family cards, for example)

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

api_instance = CheckpointCrmClient::CardsApi.new
id = 'id_example' # String | 
data = CheckpointCrmClient::Card.new # Card | 

begin
  result = api_instance.cards_partial_update(id, data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling CardsApi->cards_partial_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **data** | [**Card**](Card.md)|  | 

### Return type

[**Card**](Card.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## cards_read

> Card cards_read(id)



List of loyalty cards. Each card bounds customer and his account. Several cards can be bound to same customer (customer own several accounts), at the same time several of them can be bound to same account (serveral family cards, for example)

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

api_instance = CheckpointCrmClient::CardsApi.new
id = 'id_example' # String | 

begin
  result = api_instance.cards_read(id)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling CardsApi->cards_read: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Card**](Card.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## cards_update

> Card cards_update(id, data)



List of loyalty cards. Each card bounds customer and his account. Several cards can be bound to same customer (customer own several accounts), at the same time several of them can be bound to same account (serveral family cards, for example)

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

api_instance = CheckpointCrmClient::CardsApi.new
id = 'id_example' # String | 
data = CheckpointCrmClient::Card.new # Card | 

begin
  result = api_instance.cards_update(id, data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling CardsApi->cards_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **data** | [**Card**](Card.md)|  | 

### Return type

[**Card**](Card.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

