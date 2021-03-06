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
  class AccountOperationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Account operation represents transaction for charging or posting payment and level bonuses on customer's account.
    # @param data [AccountOperation] 
    # @param [Hash] opts the optional parameters
    # @return [AccountOperation]
    def account_operations_create(data, opts = {})
      data, _status_code, _headers = account_operations_create_with_http_info(data, opts)
      data
    end

    # Account operation represents transaction for charging or posting payment and level bonuses on customer&#39;s account.
    # @param data [AccountOperation] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccountOperation, Integer, Hash)>] AccountOperation data, response status code and response headers
    def account_operations_create_with_http_info(data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountOperationsApi.account_operations_create ...'
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling AccountOperationsApi.account_operations_create"
      end
      # resource path
      local_var_path = '/account-operations/'

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
      return_type = opts[:return_type] || 'AccountOperation' 

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
        @api_client.config.logger.debug "API called: AccountOperationsApi#account_operations_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Account operation represents transaction for charging or posting payment and level bonuses on customer's account.
    # @param id [Integer] A unique integer value identifying this операция по счёту.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def account_operations_delete(id, opts = {})
      account_operations_delete_with_http_info(id, opts)
      nil
    end

    # Account operation represents transaction for charging or posting payment and level bonuses on customer&#39;s account.
    # @param id [Integer] A unique integer value identifying this операция по счёту.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def account_operations_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountOperationsApi.account_operations_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AccountOperationsApi.account_operations_delete"
      end
      # resource path
      local_var_path = '/account-operations/{id}/'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        @api_client.config.logger.debug "API called: AccountOperationsApi#account_operations_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Account operation represents transaction for charging or posting payment and level bonuses on customer's account.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :account_id 
    # @option opts [String] :order__external_id 
    # @option opts [String] :rule_id 
    # @option opts [String] :bonus_type 
    # @option opts [String] :point_of_sale__code 
    # @option opts [String] :external_id 
    # @option opts [Integer] :page A page number within the paginated result set.
    # @return [InlineResponse200]
    def account_operations_list(opts = {})
      data, _status_code, _headers = account_operations_list_with_http_info(opts)
      data
    end

    # Account operation represents transaction for charging or posting payment and level bonuses on customer&#39;s account.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :account_id 
    # @option opts [String] :order__external_id 
    # @option opts [String] :rule_id 
    # @option opts [String] :bonus_type 
    # @option opts [String] :point_of_sale__code 
    # @option opts [String] :external_id 
    # @option opts [Integer] :page A page number within the paginated result set.
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def account_operations_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountOperationsApi.account_operations_list ...'
      end
      # resource path
      local_var_path = '/account-operations/'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'account_id'] = opts[:'account_id'] if !opts[:'account_id'].nil?
      query_params[:'order__external_id'] = opts[:'order__external_id'] if !opts[:'order__external_id'].nil?
      query_params[:'rule_id'] = opts[:'rule_id'] if !opts[:'rule_id'].nil?
      query_params[:'bonus_type'] = opts[:'bonus_type'] if !opts[:'bonus_type'].nil?
      query_params[:'point_of_sale__code'] = opts[:'point_of_sale__code'] if !opts[:'point_of_sale__code'].nil?
      query_params[:'external_id'] = opts[:'external_id'] if !opts[:'external_id'].nil?
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
      return_type = opts[:return_type] || 'InlineResponse200' 

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
        @api_client.config.logger.debug "API called: AccountOperationsApi#account_operations_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Account operation represents transaction for charging or posting payment and level bonuses on customer's account.
    # @param id [Integer] A unique integer value identifying this операция по счёту.
    # @param data [AccountOperation] 
    # @param [Hash] opts the optional parameters
    # @return [AccountOperation]
    def account_operations_partial_update(id, data, opts = {})
      data, _status_code, _headers = account_operations_partial_update_with_http_info(id, data, opts)
      data
    end

    # Account operation represents transaction for charging or posting payment and level bonuses on customer&#39;s account.
    # @param id [Integer] A unique integer value identifying this операция по счёту.
    # @param data [AccountOperation] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccountOperation, Integer, Hash)>] AccountOperation data, response status code and response headers
    def account_operations_partial_update_with_http_info(id, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountOperationsApi.account_operations_partial_update ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AccountOperationsApi.account_operations_partial_update"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling AccountOperationsApi.account_operations_partial_update"
      end
      # resource path
      local_var_path = '/account-operations/{id}/'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'AccountOperation' 

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
        @api_client.config.logger.debug "API called: AccountOperationsApi#account_operations_partial_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Account operation represents transaction for charging or posting payment and level bonuses on customer's account.
    # @param id [Integer] A unique integer value identifying this операция по счёту.
    # @param [Hash] opts the optional parameters
    # @return [AccountOperation]
    def account_operations_read(id, opts = {})
      data, _status_code, _headers = account_operations_read_with_http_info(id, opts)
      data
    end

    # Account operation represents transaction for charging or posting payment and level bonuses on customer&#39;s account.
    # @param id [Integer] A unique integer value identifying this операция по счёту.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccountOperation, Integer, Hash)>] AccountOperation data, response status code and response headers
    def account_operations_read_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountOperationsApi.account_operations_read ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AccountOperationsApi.account_operations_read"
      end
      # resource path
      local_var_path = '/account-operations/{id}/'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'AccountOperation' 

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
        @api_client.config.logger.debug "API called: AccountOperationsApi#account_operations_read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Account operation represents transaction for charging or posting payment and level bonuses on customer's account.
    # @param id [Integer] A unique integer value identifying this операция по счёту.
    # @param data [AccountOperation] 
    # @param [Hash] opts the optional parameters
    # @return [AccountOperation]
    def account_operations_update(id, data, opts = {})
      data, _status_code, _headers = account_operations_update_with_http_info(id, data, opts)
      data
    end

    # Account operation represents transaction for charging or posting payment and level bonuses on customer&#39;s account.
    # @param id [Integer] A unique integer value identifying this операция по счёту.
    # @param data [AccountOperation] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccountOperation, Integer, Hash)>] AccountOperation data, response status code and response headers
    def account_operations_update_with_http_info(id, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountOperationsApi.account_operations_update ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AccountOperationsApi.account_operations_update"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling AccountOperationsApi.account_operations_update"
      end
      # resource path
      local_var_path = '/account-operations/{id}/'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'AccountOperation' 

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
        @api_client.config.logger.debug "API called: AccountOperationsApi#account_operations_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
