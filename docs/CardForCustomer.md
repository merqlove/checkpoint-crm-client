# CheckpointCrmClient::CardForCustomer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**card_no** | **String** |  | 
**current_tier** | [**Tier**](Tier.md) |  | 
**expected_tier** | [**Tier**](Tier.md) |  | 
**account** | [**Account**](Account.md) |  | 
**is_active** | **Boolean** |  | [optional] 
**issue_date** | **DateTime** |  | [optional] 
**issuer** | **String** |  | [optional] 

## Code Sample

```ruby
require 'CheckpointCrmClient'

instance = CheckpointCrmClient::CardForCustomer.new(id: null,
                                 card_no: null,
                                 current_tier: null,
                                 expected_tier: null,
                                 account: null,
                                 is_active: null,
                                 issue_date: null,
                                 issuer: null)
```


