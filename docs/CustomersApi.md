# CheckpointCrmClient::CustomersApi

All URIs are relative to *http://crm-dev.logus.pro/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**customers_create**](CustomersApi.md#customers_create) | **POST** /customers/ | 
[**customers_delete**](CustomersApi.md#customers_delete) | **DELETE** /customers/{id}/ | 
[**customers_eid_create**](CustomersApi.md#customers_eid_create) | **POST** /customers/eid/{external_id}/ | 
[**customers_eid_read**](CustomersApi.md#customers_eid_read) | **GET** /customers/eid/{external_id}/ | 
[**customers_list**](CustomersApi.md#customers_list) | **GET** /customers/ | 
[**customers_partial_update**](CustomersApi.md#customers_partial_update) | **PATCH** /customers/{id}/ | 
[**customers_read**](CustomersApi.md#customers_read) | **GET** /customers/{id}/ | 
[**customers_update**](CustomersApi.md#customers_update) | **PUT** /customers/{id}/ | 



## customers_create

> CustomerList customers_create(data)



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

api_instance = CheckpointCrmClient::CustomersApi.new
data = CheckpointCrmClient::CustomerList.new # CustomerList | 

begin
  result = api_instance.customers_create(data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling CustomersApi->customers_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**CustomerList**](CustomerList.md)|  | 

### Return type

[**CustomerList**](CustomerList.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## customers_delete

> customers_delete(id)



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

api_instance = CheckpointCrmClient::CustomersApi.new
id = 56 # Integer | A unique integer value identifying this клиент.

begin
  api_instance.customers_delete(id)
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling CustomersApi->customers_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| A unique integer value identifying this клиент. | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## customers_eid_create

> customers_eid_create(external_id)



Creates or updates customer by external id

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

api_instance = CheckpointCrmClient::CustomersApi.new
external_id = 'external_id_example' # String | 

begin
  api_instance.customers_eid_create(external_id)
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling CustomersApi->customers_eid_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## customers_eid_read

> customers_eid_read(external_id)



Returns customer by external identifier

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

api_instance = CheckpointCrmClient::CustomersApi.new
external_id = 'external_id_example' # String | 

begin
  api_instance.customers_eid_read(external_id)
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling CustomersApi->customers_eid_read: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## customers_list

> InlineResponse2004 customers_list(opts)



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

api_instance = CheckpointCrmClient::CustomersApi.new
opts = {
  id: 3.4, # Float | 
  date_created: 'date_created_example', # String | 
  date_modified: 'date_modified_example', # String | 
  date_modified__gt: 'date_modified__gt_example', # String | 
  date_modified__lt: 'date_modified__lt_example', # String | 
  date_modified__gte: 'date_modified__gte_example', # String | 
  date_modified__lte: 'date_modified__lte_example', # String | 
  ext_date_created: 'ext_date_created_example', # String | 
  ext_date_modified: 'ext_date_modified_example', # String | 
  zip: 'zip_example', # String | 
  country_code: 'country_code_example', # String | 
  country_name: 'country_name_example', # String | 
  region: 'region_example', # String | 
  district: 'district_example', # String | 
  settlement_type: 'settlement_type_example', # String | 
  city: 'city_example', # String | 
  street: 'street_example', # String | 
  house_no: 'house_no_example', # String | 
  building_no: 'building_no_example', # String | 
  flat_no: 'flat_no_example', # String | 
  room_no: 'room_no_example', # String | 
  raw_address: 'raw_address_example', # String | 
  doc_type: 'doc_type_example', # String | 
  doc_issuer_info: 'doc_issuer_info_example', # String | 
  doc_series: 'doc_series_example', # String | 
  doc_number: 'doc_number_example', # String | 
  department_code: 'department_code_example', # String | 
  department_name: 'department_name_example', # String | 
  doc_issue_date: 'doc_issue_date_example', # String | 
  doc_expiration_date: 'doc_expiration_date_example', # String | 
  user: 'user_example', # String | 
  external_id: 'external_id_example', # String | 
  first_name: 'first_name_example', # String | 
  last_name: 'last_name_example', # String | 
  middle_name: 'middle_name_example', # String | 
  phone: 'phone_example', # String | 
  allow_phone_contact: 'allow_phone_contact_example', # String | 
  birth_date: 'birth_date_example', # String | 
  gender: 'gender_example', # String | 
  language: 'language_example', # String | 
  email: 'email_example', # String | 
  allow_email_contact: 'allow_email_contact_example', # String | 
  notes: 'notes_example', # String | 
  is_closed: 'is_closed_example', # String | 
  merged_to: 'merged_to_example', # String | 
  page: 56 # Integer | A page number within the paginated result set.
}

begin
  result = api_instance.customers_list(opts)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling CustomersApi->customers_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**|  | [optional] 
 **date_created** | **String**|  | [optional] 
 **date_modified** | **String**|  | [optional] 
 **date_modified__gt** | **String**|  | [optional] 
 **date_modified__lt** | **String**|  | [optional] 
 **date_modified__gte** | **String**|  | [optional] 
 **date_modified__lte** | **String**|  | [optional] 
 **ext_date_created** | **String**|  | [optional] 
 **ext_date_modified** | **String**|  | [optional] 
 **zip** | **String**|  | [optional] 
 **country_code** | **String**|  | [optional] 
 **country_name** | **String**|  | [optional] 
 **region** | **String**|  | [optional] 
 **district** | **String**|  | [optional] 
 **settlement_type** | **String**|  | [optional] 
 **city** | **String**|  | [optional] 
 **street** | **String**|  | [optional] 
 **house_no** | **String**|  | [optional] 
 **building_no** | **String**|  | [optional] 
 **flat_no** | **String**|  | [optional] 
 **room_no** | **String**|  | [optional] 
 **raw_address** | **String**|  | [optional] 
 **doc_type** | **String**|  | [optional] 
 **doc_issuer_info** | **String**|  | [optional] 
 **doc_series** | **String**|  | [optional] 
 **doc_number** | **String**|  | [optional] 
 **department_code** | **String**|  | [optional] 
 **department_name** | **String**|  | [optional] 
 **doc_issue_date** | **String**|  | [optional] 
 **doc_expiration_date** | **String**|  | [optional] 
 **user** | **String**|  | [optional] 
 **external_id** | **String**|  | [optional] 
 **first_name** | **String**|  | [optional] 
 **last_name** | **String**|  | [optional] 
 **middle_name** | **String**|  | [optional] 
 **phone** | **String**|  | [optional] 
 **allow_phone_contact** | **String**|  | [optional] 
 **birth_date** | **String**|  | [optional] 
 **gender** | **String**|  | [optional] 
 **language** | **String**|  | [optional] 
 **email** | **String**|  | [optional] 
 **allow_email_contact** | **String**|  | [optional] 
 **notes** | **String**|  | [optional] 
 **is_closed** | **String**|  | [optional] 
 **merged_to** | **String**|  | [optional] 
 **page** | **Integer**| A page number within the paginated result set. | [optional] 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## customers_partial_update

> CustomerList customers_partial_update(id, data)



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

api_instance = CheckpointCrmClient::CustomersApi.new
id = 56 # Integer | A unique integer value identifying this клиент.
data = CheckpointCrmClient::CustomerList.new # CustomerList | 

begin
  result = api_instance.customers_partial_update(id, data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling CustomersApi->customers_partial_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| A unique integer value identifying this клиент. | 
 **data** | [**CustomerList**](CustomerList.md)|  | 

### Return type

[**CustomerList**](CustomerList.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## customers_read

> CustomerDetail customers_read(id)



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

api_instance = CheckpointCrmClient::CustomersApi.new
id = 56 # Integer | A unique integer value identifying this клиент.

begin
  result = api_instance.customers_read(id)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling CustomersApi->customers_read: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| A unique integer value identifying this клиент. | 

### Return type

[**CustomerDetail**](CustomerDetail.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## customers_update

> CustomerList customers_update(id, data)



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

api_instance = CheckpointCrmClient::CustomersApi.new
id = 56 # Integer | A unique integer value identifying this клиент.
data = CheckpointCrmClient::CustomerList.new # CustomerList | 

begin
  result = api_instance.customers_update(id, data)
  p result
rescue CheckpointCrmClient::ApiError => e
  puts "Exception when calling CustomersApi->customers_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| A unique integer value identifying this клиент. | 
 **data** | [**CustomerList**](CustomerList.md)|  | 

### Return type

[**CustomerList**](CustomerList.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

