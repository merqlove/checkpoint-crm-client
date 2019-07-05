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
  class PaymentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List of order's payments
    # @param data [Payment] 
    # @param [Hash] opts the optional parameters
    # @return [Payment]
    def payments_create(data, opts = {})
      data, _status_code, _headers = payments_create_with_http_info(data, opts)
      data
    end

    # List of order&#39;s payments
    # @param data [Payment] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Payment, Integer, Hash)>] Payment data, response status code and response headers
    def payments_create_with_http_info(data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentsApi.payments_create ...'
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling PaymentsApi.payments_create"
      end
      # resource path
      local_var_path = '/payments/'

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
      return_type = opts[:return_type] || 'Payment' 

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
        @api_client.config.logger.debug "API called: PaymentsApi#payments_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List of order's payments
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def payments_delete(id, opts = {})
      payments_delete_with_http_info(id, opts)
      nil
    end

    # List of order&#39;s payments
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def payments_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentsApi.payments_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PaymentsApi.payments_delete"
      end
      # resource path
      local_var_path = '/payments/{id}/'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        @api_client.config.logger.debug "API called: PaymentsApi#payments_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List of order's payments
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page A page number within the paginated result set.
    # @return [InlineResponse2007]
    def payments_list(opts = {})
      data, _status_code, _headers = payments_list_with_http_info(opts)
      data
    end

    # List of order&#39;s payments
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page A page number within the paginated result set.
    # @return [Array<(InlineResponse2007, Integer, Hash)>] InlineResponse2007 data, response status code and response headers
    def payments_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentsApi.payments_list ...'
      end
      # resource path
      local_var_path = '/payments/'

      # query parameters
      query_params = opts[:query_params] || {}
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
      return_type = opts[:return_type] || 'InlineResponse2007' 

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
        @api_client.config.logger.debug "API called: PaymentsApi#payments_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List of order's payments
    # @param id [String] 
    # @param data [Payment] 
    # @param [Hash] opts the optional parameters
    # @return [Payment]
    def payments_partial_update(id, data, opts = {})
      data, _status_code, _headers = payments_partial_update_with_http_info(id, data, opts)
      data
    end

    # List of order&#39;s payments
    # @param id [String] 
    # @param data [Payment] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Payment, Integer, Hash)>] Payment data, response status code and response headers
    def payments_partial_update_with_http_info(id, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentsApi.payments_partial_update ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PaymentsApi.payments_partial_update"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling PaymentsApi.payments_partial_update"
      end
      # resource path
      local_var_path = '/payments/{id}/'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'Payment' 

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
        @api_client.config.logger.debug "API called: PaymentsApi#payments_partial_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List of order's payments
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Payment]
    def payments_read(id, opts = {})
      data, _status_code, _headers = payments_read_with_http_info(id, opts)
      data
    end

    # List of order&#39;s payments
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Payment, Integer, Hash)>] Payment data, response status code and response headers
    def payments_read_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentsApi.payments_read ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PaymentsApi.payments_read"
      end
      # resource path
      local_var_path = '/payments/{id}/'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'Payment' 

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
        @api_client.config.logger.debug "API called: PaymentsApi#payments_read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List of order's payments
    # @param id [String] 
    # @param data [Payment] 
    # @param [Hash] opts the optional parameters
    # @return [Payment]
    def payments_update(id, data, opts = {})
      data, _status_code, _headers = payments_update_with_http_info(id, data, opts)
      data
    end

    # List of order&#39;s payments
    # @param id [String] 
    # @param data [Payment] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Payment, Integer, Hash)>] Payment data, response status code and response headers
    def payments_update_with_http_info(id, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentsApi.payments_update ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PaymentsApi.payments_update"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling PaymentsApi.payments_update"
      end
      # resource path
      local_var_path = '/payments/{id}/'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'Payment' 

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
        @api_client.config.logger.debug "API called: PaymentsApi#payments_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end