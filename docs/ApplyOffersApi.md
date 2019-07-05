# CheckpointCrmClient::ApplyOffersApi

All URIs are relative to *http://crm-dev.logus.pro/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apply_offers_create**](ApplyOffersApi.md#apply_offers_create) | **POST** /apply-offers/ | 
[**apply_offers_preview**](ApplyOffersApi.md#apply_offers_preview) | **POST** /apply-offers/preview/ | 



## apply_offers_create

> ApplyOffers apply_offers_create(data)



Applies specified list of promo-offers to order. This fact will be registered on server to respect promo-offer application limits. If no list of offers provided, all auto-applicable promo offers will be applied

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

api_instance = CheckpointCrmClient::ApplyOffersApi.new
data = CheckpointCrmClient::ApplyOffers.new # ApplyOffers | 

begin
  result = api_instance.apply_offers_create(data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling ApplyOffersApi->apply_offers_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**ApplyOffers**](ApplyOffers.md)|  | 

### Return type

[**ApplyOffers**](ApplyOffers.md)

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## apply_offers_preview

> ApplyOffers apply_offers_preview(data)



Makes 'preview' version of order with applied promo-offer, but does not saves any changes and does not tracks offer application.

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

api_instance = CheckpointCrmClient::ApplyOffersApi.new
data = CheckpointCrmClient::ApplyOffers.new # ApplyOffers | 

begin
  result = api_instance.apply_offers_preview(data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling ApplyOffersApi->apply_offers_preview: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**ApplyOffers**](ApplyOffers.md)|  | 

### Return type

[**ApplyOffers**](ApplyOffers.md)

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

