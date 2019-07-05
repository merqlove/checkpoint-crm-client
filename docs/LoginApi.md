# CheckpointCrmClient::LoginApi

All URIs are relative to *http://crm-dev.logus.pro/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**login_create**](LoginApi.md#login_create) | **POST** /login/ | API View that receives a POST with a user&#39;s username and password.



## login_create

> JSONWebToken login_create(data)

API View that receives a POST with a user's username and password.

Returns a JSON Web Token that can be used for authenticated requests.

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

api_instance = CheckpointCrmClient::LoginApi.new
data = CheckpointCrmClient::JSONWebToken.new # JSONWebToken | 

begin
  #API View that receives a POST with a user's username and password.
  result = api_instance.login_create(data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling LoginApi->login_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**JSONWebToken**](JSONWebToken.md)|  | 

### Return type

[**JSONWebToken**](JSONWebToken.md)

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

