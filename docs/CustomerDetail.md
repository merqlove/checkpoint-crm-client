# CheckpointCrmClient::CustomerDetail

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**url** | **String** |  | [optional] 
**external_id** | **String** |  | [optional] 
**first_name** | **String** |  | [optional] 
**last_name** | **String** |  | 
**middle_name** | **String** |  | [optional] 
**birth_date** | **Date** |  | [optional] 
**gender** | **String** |  | [optional] 
**language** | **String** |  | [optional] 
**phone** | **String** |  | [optional] 
**allow_phone_contact** | **Boolean** |  | [optional] 
**email** | **String** |  | [optional] 
**allow_email_contact** | **Boolean** |  | [optional] 
**notes** | **String** |  | [optional] 
**date_created** | **DateTime** |  | [optional] 
**date_modified** | **DateTime** |  | [optional] 
**ext_date_created** | **DateTime** |  | [optional] 
**ext_date_modified** | **DateTime** |  | [optional] 
**doc_type** | **String** |  | [optional] 
**doc_issuer_info** | **String** |  | [optional] 
**doc_series** | **String** |  | [optional] 
**doc_number** | **String** |  | [optional] 
**department_code** | **String** |  | [optional] 
**department_name** | **String** |  | [optional] 
**doc_issue_date** | **Date** |  | [optional] 
**doc_expiration_date** | **Date** |  | [optional] 
**is_closed** | **Boolean** |  | [optional] 
**merged_to** | **Integer** |  | [optional] 
**building_no** | **String** |  | [optional] 
**city** | **String** |  | [optional] 
**country_code** | **String** |  | [optional] 
**country_name** | **String** |  | [optional] 
**district** | **String** |  | [optional] 
**flat_no** | **String** |  | [optional] 
**house_no** | **String** |  | [optional] 
**region** | **String** |  | [optional] 
**room_no** | **String** |  | [optional] 
**settlement_type** | **String** |  | [optional] 
**street** | **String** |  | [optional] 
**raw_address** | **String** |  | [optional] 
**cards** | [**Array&lt;CardForCustomer&gt;**](CardForCustomer.md) |  | [optional] 
**view_url** | **String** |  | [optional] 
**preferences** | [**Array&lt;CustomerPreferenceForCustomer&gt;**](CustomerPreferenceForCustomer.md) |  | [optional] 

## Code Sample

```ruby
require 'CheckpointCrmClient'

instance = CheckpointCrmClient::CustomerDetail.new(id: null,
                                 url: null,
                                 external_id: null,
                                 first_name: null,
                                 last_name: null,
                                 middle_name: null,
                                 birth_date: null,
                                 gender: null,
                                 language: null,
                                 phone: null,
                                 allow_phone_contact: null,
                                 email: null,
                                 allow_email_contact: null,
                                 notes: null,
                                 date_created: null,
                                 date_modified: null,
                                 ext_date_created: null,
                                 ext_date_modified: null,
                                 doc_type: null,
                                 doc_issuer_info: null,
                                 doc_series: null,
                                 doc_number: null,
                                 department_code: null,
                                 department_name: null,
                                 doc_issue_date: null,
                                 doc_expiration_date: null,
                                 is_closed: null,
                                 merged_to: null,
                                 building_no: null,
                                 city: null,
                                 country_code: null,
                                 country_name: null,
                                 district: null,
                                 flat_no: null,
                                 house_no: null,
                                 region: null,
                                 room_no: null,
                                 settlement_type: null,
                                 street: null,
                                 raw_address: null,
                                 cards: null,
                                 view_url: null,
                                 preferences: null)
```


