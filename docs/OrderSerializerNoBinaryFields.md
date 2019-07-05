# CheckpointCrmClient::OrderSerializerNoBinaryFields

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**point_of_sale_id** | **String** |  | [optional] 
**pos_code** | **String** |  | [optional] 
**customer** | [**CustomerList**](CustomerList.md) |  | [optional] 
**customer_id** | **Integer** |  | [optional] 
**card_id** | **Integer** |  | [optional] 
**card_no** | **String** |  | [optional] 
**promo_code** | **String** |  | [optional] 
**name** | **String** |  | 
**notes** | **String** |  | [optional] 
**type** | **String** | booking, medical history etc. | [optional] 
**date_start** | **DateTime** |  | 
**date_end** | **DateTime** |  | [optional] 
**external_id** | **String** |  | 
**items** | [**Array&lt;OrderItem&gt;**](OrderItem.md) |  | [optional] 
**payments** | [**Array&lt;Payment&gt;**](Payment.md) |  | [optional] 
**status** | **String** |  | [optional] 
**extra_fields** | [**Array&lt;ExtraFieldsNoBinary&gt;**](ExtraFieldsNoBinary.md) |  | [optional] 
**url** | **String** |  | [optional] 
**market_source** | **String** |  | [optional] 
**market_segment** | **String** |  | [optional] 
**market_geo_code** | **String** |  | [optional] 
**market_track_code** | **String** |  | [optional] 
**market_open_code** | **String** |  | [optional] 
**market_extra_1** | **String** |  | [optional] 
**market_extra_2** | **String** |  | [optional] 
**date_created** | **DateTime** |  | [optional] 
**date_modified** | **DateTime** |  | [optional] 
**ext_date_created** | **DateTime** |  | [optional] 
**ext_date_modified** | **DateTime** |  | [optional] 

## Code Sample

```ruby
require 'CheckpointCrmClient'

instance = CheckpointCrmClient::OrderSerializerNoBinaryFields.new(id: null,
                                 point_of_sale_id: null,
                                 pos_code: null,
                                 customer: null,
                                 customer_id: null,
                                 card_id: null,
                                 card_no: null,
                                 promo_code: null,
                                 name: null,
                                 notes: null,
                                 type: null,
                                 date_start: null,
                                 date_end: null,
                                 external_id: null,
                                 items: null,
                                 payments: null,
                                 status: null,
                                 extra_fields: null,
                                 url: null,
                                 market_source: null,
                                 market_segment: null,
                                 market_geo_code: null,
                                 market_track_code: null,
                                 market_open_code: null,
                                 market_extra_1: null,
                                 market_extra_2: null,
                                 date_created: null,
                                 date_modified: null,
                                 ext_date_created: null,
                                 ext_date_modified: null)
```


