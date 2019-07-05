# CheckpointCrmClient::OffersApi

All URIs are relative to *http://crm-dev.logus.pro/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**offers_create**](OffersApi.md#offers_create) | **POST** /offers/ | 



## offers_create

> GetApplicableOffers offers_create(data)



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

api_instance = CheckpointCrmClient::OffersApi.new
data = CheckpointCrmClient::GetApplicableOffers.new # GetApplicableOffers | 

begin
  result = api_instance.offers_create(data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling OffersApi->offers_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**GetApplicableOffers**](GetApplicableOffers.md)|  | 

### Return type

[**GetApplicableOffers**](GetApplicableOffers.md)

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

