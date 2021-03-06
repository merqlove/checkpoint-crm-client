=begin
#Checkpoint CRM API

#Checkpoint CRM API

The version of the OpenAPI document: v1
Contact: szhizhenko@sanatorium-is.ru
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.2

=end

require 'cgi'

module CheckpointCrmClient
  class CustomersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # @param data [CustomerList] 
    # @param [Hash] opts the optional parameters
    # @return [CustomerList]
    def customers_create(data, opts = {})
      data, _status_code, _headers = customers_create_with_http_info(data, opts)
      data
    end

    # @param data [CustomerList] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CustomerList, Integer, Hash)>] CustomerList data, response status code and response headers
    def customers_create_with_http_info(data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomersApi.customers_create ...'
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling CustomersApi.customers_create"
      end
      # resource path
      local_var_path = '/customers/'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(data) 

      # return_type
      return_type = opts[:return_type] || 'CustomerList' 

      # auth_names
      auth_names = opts[:auth_names] || ['Basic', 'Token']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersApi#customers_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param id [Integer] A unique integer value identifying this клиент.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def customers_delete(id, opts = {})
      customers_delete_with_http_info(id, opts)
      nil
    end

    # @param id [Integer] A unique integer value identifying this клиент.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def customers_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomersApi.customers_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CustomersApi.customers_delete"
      end
      # resource path
      local_var_path = '/customers/{id}/'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || ['Basic', 'Token']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersApi#customers_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Creates or updates customer by external id
    # @param external_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def customers_eid_create(external_id, opts = {})
      customers_eid_create_with_http_info(external_id, opts)
      nil
    end

    # Creates or updates customer by external id
    # @param external_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def customers_eid_create_with_http_info(external_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomersApi.customers_eid_create ...'
      end
      # verify the required parameter 'external_id' is set
      if @api_client.config.client_side_validation && external_id.nil?
        fail ArgumentError, "Missing the required parameter 'external_id' when calling CustomersApi.customers_eid_create"
      end
      # resource path
      local_var_path = '/customers/eid/{external_id}/'.sub('{' + 'external_id' + '}', CGI.escape(external_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || ['Basic', 'Token']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersApi#customers_eid_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns customer by external identifier
    # @param external_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def customers_eid_read(external_id, opts = {})
      customers_eid_read_with_http_info(external_id, opts)
      nil
    end

    # Returns customer by external identifier
    # @param external_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def customers_eid_read_with_http_info(external_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomersApi.customers_eid_read ...'
      end
      # verify the required parameter 'external_id' is set
      if @api_client.config.client_side_validation && external_id.nil?
        fail ArgumentError, "Missing the required parameter 'external_id' when calling CustomersApi.customers_eid_read"
      end
      # resource path
      local_var_path = '/customers/eid/{external_id}/'.sub('{' + 'external_id' + '}', CGI.escape(external_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || ['Basic', 'Token']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersApi#customers_eid_read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param [Hash] opts the optional parameters
    # @option opts [Float] :id 
    # @option opts [String] :date_created 
    # @option opts [String] :date_modified 
    # @option opts [String] :date_modified__gt 
    # @option opts [String] :date_modified__lt 
    # @option opts [String] :date_modified__gte 
    # @option opts [String] :date_modified__lte 
    # @option opts [String] :ext_date_created 
    # @option opts [String] :ext_date_modified 
    # @option opts [String] :zip 
    # @option opts [String] :country_code 
    # @option opts [String] :country_name 
    # @option opts [String] :region 
    # @option opts [String] :district 
    # @option opts [String] :settlement_type 
    # @option opts [String] :city 
    # @option opts [String] :street 
    # @option opts [String] :house_no 
    # @option opts [String] :building_no 
    # @option opts [String] :flat_no 
    # @option opts [String] :room_no 
    # @option opts [String] :raw_address 
    # @option opts [String] :doc_type 
    # @option opts [String] :doc_issuer_info 
    # @option opts [String] :doc_series 
    # @option opts [String] :doc_number 
    # @option opts [String] :department_code 
    # @option opts [String] :department_name 
    # @option opts [String] :doc_issue_date 
    # @option opts [String] :doc_expiration_date 
    # @option opts [String] :user 
    # @option opts [String] :external_id 
    # @option opts [String] :first_name 
    # @option opts [String] :last_name 
    # @option opts [String] :middle_name 
    # @option opts [String] :phone 
    # @option opts [String] :allow_phone_contact 
    # @option opts [String] :birth_date 
    # @option opts [String] :gender 
    # @option opts [String] :language 
    # @option opts [String] :email 
    # @option opts [String] :allow_email_contact 
    # @option opts [String] :notes 
    # @option opts [String] :is_closed 
    # @option opts [String] :merged_to 
    # @option opts [Integer] :page A page number within the paginated result set.
    # @return [InlineResponse2004]
    def customers_list(opts = {})
      data, _status_code, _headers = customers_list_with_http_info(opts)
      data
    end

    # @param [Hash] opts the optional parameters
    # @option opts [Float] :id 
    # @option opts [String] :date_created 
    # @option opts [String] :date_modified 
    # @option opts [String] :date_modified__gt 
    # @option opts [String] :date_modified__lt 
    # @option opts [String] :date_modified__gte 
    # @option opts [String] :date_modified__lte 
    # @option opts [String] :ext_date_created 
    # @option opts [String] :ext_date_modified 
    # @option opts [String] :zip 
    # @option opts [String] :country_code 
    # @option opts [String] :country_name 
    # @option opts [String] :region 
    # @option opts [String] :district 
    # @option opts [String] :settlement_type 
    # @option opts [String] :city 
    # @option opts [String] :street 
    # @option opts [String] :house_no 
    # @option opts [String] :building_no 
    # @option opts [String] :flat_no 
    # @option opts [String] :room_no 
    # @option opts [String] :raw_address 
    # @option opts [String] :doc_type 
    # @option opts [String] :doc_issuer_info 
    # @option opts [String] :doc_series 
    # @option opts [String] :doc_number 
    # @option opts [String] :department_code 
    # @option opts [String] :department_name 
    # @option opts [String] :doc_issue_date 
    # @option opts [String] :doc_expiration_date 
    # @option opts [String] :user 
    # @option opts [String] :external_id 
    # @option opts [String] :first_name 
    # @option opts [String] :last_name 
    # @option opts [String] :middle_name 
    # @option opts [String] :phone 
    # @option opts [String] :allow_phone_contact 
    # @option opts [String] :birth_date 
    # @option opts [String] :gender 
    # @option opts [String] :language 
    # @option opts [String] :email 
    # @option opts [String] :allow_email_contact 
    # @option opts [String] :notes 
    # @option opts [String] :is_closed 
    # @option opts [String] :merged_to 
    # @option opts [Integer] :page A page number within the paginated result set.
    # @return [Array<(InlineResponse2004, Integer, Hash)>] InlineResponse2004 data, response status code and response headers
    def customers_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomersApi.customers_list ...'
      end
      # resource path
      local_var_path = '/customers/'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?
      query_params[:'date_created'] = opts[:'date_created'] if !opts[:'date_created'].nil?
      query_params[:'date_modified'] = opts[:'date_modified'] if !opts[:'date_modified'].nil?
      query_params[:'date_modified__gt'] = opts[:'date_modified__gt'] if !opts[:'date_modified__gt'].nil?
      query_params[:'date_modified__lt'] = opts[:'date_modified__lt'] if !opts[:'date_modified__lt'].nil?
      query_params[:'date_modified__gte'] = opts[:'date_modified__gte'] if !opts[:'date_modified__gte'].nil?
      query_params[:'date_modified__lte'] = opts[:'date_modified__lte'] if !opts[:'date_modified__lte'].nil?
      query_params[:'ext_date_created'] = opts[:'ext_date_created'] if !opts[:'ext_date_created'].nil?
      query_params[:'ext_date_modified'] = opts[:'ext_date_modified'] if !opts[:'ext_date_modified'].nil?
      query_params[:'zip'] = opts[:'zip'] if !opts[:'zip'].nil?
      query_params[:'country_code'] = opts[:'country_code'] if !opts[:'country_code'].nil?
      query_params[:'country_name'] = opts[:'country_name'] if !opts[:'country_name'].nil?
      query_params[:'region'] = opts[:'region'] if !opts[:'region'].nil?
      query_params[:'district'] = opts[:'district'] if !opts[:'district'].nil?
      query_params[:'settlement_type'] = opts[:'settlement_type'] if !opts[:'settlement_type'].nil?
      query_params[:'city'] = opts[:'city'] if !opts[:'city'].nil?
      query_params[:'street'] = opts[:'street'] if !opts[:'street'].nil?
      query_params[:'house_no'] = opts[:'house_no'] if !opts[:'house_no'].nil?
      query_params[:'building_no'] = opts[:'building_no'] if !opts[:'building_no'].nil?
      query_params[:'flat_no'] = opts[:'flat_no'] if !opts[:'flat_no'].nil?
      query_params[:'room_no'] = opts[:'room_no'] if !opts[:'room_no'].nil?
      query_params[:'raw_address'] = opts[:'raw_address'] if !opts[:'raw_address'].nil?
      query_params[:'doc_type'] = opts[:'doc_type'] if !opts[:'doc_type'].nil?
      query_params[:'doc_issuer_info'] = opts[:'doc_issuer_info'] if !opts[:'doc_issuer_info'].nil?
      query_params[:'doc_series'] = opts[:'doc_series'] if !opts[:'doc_series'].nil?
      query_params[:'doc_number'] = opts[:'doc_number'] if !opts[:'doc_number'].nil?
      query_params[:'department_code'] = opts[:'department_code'] if !opts[:'department_code'].nil?
      query_params[:'department_name'] = opts[:'department_name'] if !opts[:'department_name'].nil?
      query_params[:'doc_issue_date'] = opts[:'doc_issue_date'] if !opts[:'doc_issue_date'].nil?
      query_params[:'doc_expiration_date'] = opts[:'doc_expiration_date'] if !opts[:'doc_expiration_date'].nil?
      query_params[:'user'] = opts[:'user'] if !opts[:'user'].nil?
      query_params[:'external_id'] = opts[:'external_id'] if !opts[:'external_id'].nil?
      query_params[:'first_name'] = opts[:'first_name'] if !opts[:'first_name'].nil?
      query_params[:'last_name'] = opts[:'last_name'] if !opts[:'last_name'].nil?
      query_params[:'middle_name'] = opts[:'middle_name'] if !opts[:'middle_name'].nil?
      query_params[:'phone'] = opts[:'phone'] if !opts[:'phone'].nil?
      query_params[:'allow_phone_contact'] = opts[:'allow_phone_contact'] if !opts[:'allow_phone_contact'].nil?
      query_params[:'birth_date'] = opts[:'birth_date'] if !opts[:'birth_date'].nil?
      query_params[:'gender'] = opts[:'gender'] if !opts[:'gender'].nil?
      query_params[:'language'] = opts[:'language'] if !opts[:'language'].nil?
      query_params[:'email'] = opts[:'email'] if !opts[:'email'].nil?
      query_params[:'allow_email_contact'] = opts[:'allow_email_contact'] if !opts[:'allow_email_contact'].nil?
      query_params[:'notes'] = opts[:'notes'] if !opts[:'notes'].nil?
      query_params[:'is_closed'] = opts[:'is_closed'] if !opts[:'is_closed'].nil?
      query_params[:'merged_to'] = opts[:'merged_to'] if !opts[:'merged_to'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2004' 

      # auth_names
      auth_names = opts[:auth_names] || ['Basic', 'Token']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersApi#customers_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param id [Integer] A unique integer value identifying this клиент.
    # @param data [CustomerList] 
    # @param [Hash] opts the optional parameters
    # @return [CustomerList]
    def customers_partial_update(id, data, opts = {})
      data, _status_code, _headers = customers_partial_update_with_http_info(id, data, opts)
      data
    end

    # @param id [Integer] A unique integer value identifying this клиент.
    # @param data [CustomerList] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CustomerList, Integer, Hash)>] CustomerList data, response status code and response headers
    def customers_partial_update_with_http_info(id, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomersApi.customers_partial_update ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CustomersApi.customers_partial_update"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling CustomersApi.customers_partial_update"
      end
      # resource path
      local_var_path = '/customers/{id}/'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(data) 

      # return_type
      return_type = opts[:return_type] || 'CustomerList' 

      # auth_names
      auth_names = opts[:auth_names] || ['Basic', 'Token']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersApi#customers_partial_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param id [Integer] A unique integer value identifying this клиент.
    # @param [Hash] opts the optional parameters
    # @return [CustomerDetail]
    def customers_read(id, opts = {})
      data, _status_code, _headers = customers_read_with_http_info(id, opts)
      data
    end

    # @param id [Integer] A unique integer value identifying this клиент.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CustomerDetail, Integer, Hash)>] CustomerDetail data, response status code and response headers
    def customers_read_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomersApi.customers_read ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CustomersApi.customers_read"
      end
      # resource path
      local_var_path = '/customers/{id}/'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'CustomerDetail' 

      # auth_names
      auth_names = opts[:auth_names] || ['Basic', 'Token']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersApi#customers_read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param id [Integer] A unique integer value identifying this клиент.
    # @param data [CustomerList] 
    # @param [Hash] opts the optional parameters
    # @return [CustomerList]
    def customers_update(id, data, opts = {})
      data, _status_code, _headers = customers_update_with_http_info(id, data, opts)
      data
    end

    # @param id [Integer] A unique integer value identifying this клиент.
    # @param data [CustomerList] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CustomerList, Integer, Hash)>] CustomerList data, response status code and response headers
    def customers_update_with_http_info(id, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomersApi.customers_update ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CustomersApi.customers_update"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling CustomersApi.customers_update"
      end
      # resource path
      local_var_path = '/customers/{id}/'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(data) 

      # return_type
      return_type = opts[:return_type] || 'CustomerList' 

      # auth_names
      auth_names = opts[:auth_names] || ['Basic', 'Token']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersApi#customers_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
