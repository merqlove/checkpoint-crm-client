# CheckpointCrmClient::AccountOperation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**point_of_sale_id** | **Integer** |  | [optional] 
**account_id** | **Integer** |  | 
**external_id** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**debit** | **String** |  | [optional] 
**credit** | **String** |  | [optional] 
**debit_expirable** | **String** |  | [optional] 
**credit_expirable** | **String** |  | [optional] 
**expiration_date** | **Date** |  | [optional] 
**order_id** | **Integer** |  | [optional] 
**rule_id** | **Integer** |  | [optional] 
**bonus_type_id** | **Integer** |  | [optional] 
**bonus_class** | **String** |  | [optional] [default to &#39;PAYM&#39;]
**initiator_user** | **String** |  | [optional] 
**date_created** | **DateTime** |  | [optional] 
**date_modified** | **DateTime** |  | [optional] 

## Code Sample

```ruby
require 'CheckpointCrmClient'

instance = CheckpointCrmClient::AccountOperation.new(id: null,
                                 point_of_sale_id: null,
                                 account_id: null,
                                 external_id: null,
                                 name: null,
                                 debit: null,
                                 credit: null,
                                 debit_expirable: null,
                                 credit_expirable: null,
                                 expiration_date: null,
                                 order_id: null,
                                 rule_id: null,
                                 bonus_type_id: null,
                                 bonus_class: null,
                                 initiator_user: null,
                                 date_created: null,
                                 date_modified: null)
```


