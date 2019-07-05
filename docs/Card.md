# CheckpointCrmClient::Card

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**current_tier_id** | **Integer** |  | 
**expected_tier_id** | **Integer** |  | [optional] 
**card_no** | **String** |  | 
**issue_date** | **DateTime** |  | [optional] 
**is_active** | **Boolean** |  | [optional] 
**customer_id** | **Integer** |  | [optional] 
**account** | [**Account**](Account.md) |  | [optional] 
**issuer** | **String** |  | [optional] 
**date_created** | **DateTime** |  | [optional] 
**date_modified** | **DateTime** |  | [optional] 

## Code Sample

```ruby
require 'CheckpointCrmClient'

instance = CheckpointCrmClient::Card.new(id: null,
                                 current_tier_id: null,
                                 expected_tier_id: null,
                                 card_no: null,
                                 issue_date: null,
                                 is_active: null,
                                 customer_id: null,
                                 account: null,
                                 issuer: null,
                                 date_created: null,
                                 date_modified: null)
```


