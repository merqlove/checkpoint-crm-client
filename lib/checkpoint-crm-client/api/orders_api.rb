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
  class OrdersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Presents list of previous and current guest's orders
    # @param data [Order] 
    # @param [Hash] opts the optional parameters
    # @return [Order]
    def orders_create(data, opts = {})
      data, _status_code, _headers = orders_create_with_http_info(data, opts)
      data
    end

    # Presents list of previous and current guest&#39;s orders
    # @param data [Order] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Order, Integer, Hash)>] Order data, response status code and response headers
    def orders_create_with_http_info(data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.orders_create ...'
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling OrdersApi.orders_create"
      end
      # resource path
      local_var_path = '/orders/'

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
      return_type = opts[:return_type] || 'Order' 

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
        @api_client.config.logger.debug "API called: OrdersApi#orders_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Presents list of previous and current guest's orders
    # @param id [Integer] A unique integer value identifying this заказ.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def orders_delete(id, opts = {})
      orders_delete_with_http_info(id, opts)
      nil
    end

    # Presents list of previous and current guest&#39;s orders
    # @param id [Integer] A unique integer value identifying this заказ.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def orders_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.orders_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OrdersApi.orders_delete"
      end
      # resource path
      local_var_path = '/orders/{id}/'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        @api_client.config.logger.debug "API called: OrdersApi#orders_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Presents list of previous and current guest's orders
    # @param id [Integer] A unique integer value identifying this заказ.
    # @param name [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def orders_extra_fields_delete(id, name, opts = {})
      orders_extra_fields_delete_with_http_info(id, name, opts)
      nil
    end

    # Presents list of previous and current guest&#39;s orders
    # @param id [Integer] A unique integer value identifying this заказ.
    # @param name [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def orders_extra_fields_delete_with_http_info(id, name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.orders_extra_fields_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OrdersApi.orders_extra_fields_delete"
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling OrdersApi.orders_extra_fields_delete"
      end
      # resource path
      local_var_path = '/orders/{id}/extra-fields/{name}/'.sub('{' + 'id' + '}', CGI.escape(id.to_s)).sub('{' + 'name' + '}', CGI.escape(name.to_s))

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
        @api_client.config.logger.debug "API called: OrdersApi#orders_extra_fields_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Presents list of previous and current guest's orders
    # @param id [Integer] A unique integer value identifying this заказ.
    # @param name [String] 
    # @param data [Order] 
    # @param [Hash] opts the optional parameters
    # @return [Order]
    def orders_extra_fields_partial_update(id, name, data, opts = {})
      data, _status_code, _headers = orders_extra_fields_partial_update_with_http_info(id, name, data, opts)
      data
    end

    # Presents list of previous and current guest&#39;s orders
    # @param id [Integer] A unique integer value identifying this заказ.
    # @param name [String] 
    # @param data [Order] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Order, Integer, Hash)>] Order data, response status code and response headers
    def orders_extra_fields_partial_update_with_http_info(id, name, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.orders_extra_fields_partial_update ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OrdersApi.orders_extra_fields_partial_update"
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling OrdersApi.orders_extra_fields_partial_update"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling OrdersApi.orders_extra_fields_partial_update"
      end
      # resource path
      local_var_path = '/orders/{id}/extra-fields/{name}/'.sub('{' + 'id' + '}', CGI.escape(id.to_s)).sub('{' + 'name' + '}', CGI.escape(name.to_s))

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
      return_type = opts[:return_type] || 'Order' 

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
        @api_client.config.logger.debug "API called: OrdersApi#orders_extra_fields_partial_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Presents list of previous and current guest's orders
    # @param id [Integer] A unique integer value identifying this заказ.
    # @param name [String] 
    # @param [Hash] opts the optional parameters
    # @return [OrderSerializerNoBinaryFields]
    def orders_extra_fields_read(id, name, opts = {})
      data, _status_code, _headers = orders_extra_fields_read_with_http_info(id, name, opts)
      data
    end

    # Presents list of previous and current guest&#39;s orders
    # @param id [Integer] A unique integer value identifying this заказ.
    # @param name [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrderSerializerNoBinaryFields, Integer, Hash)>] OrderSerializerNoBinaryFields data, response status code and response headers
    def orders_extra_fields_read_with_http_info(id, name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.orders_extra_fields_read ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OrdersApi.orders_extra_fields_read"
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling OrdersApi.orders_extra_fields_read"
      end
      # resource path
      local_var_path = '/orders/{id}/extra-fields/{name}/'.sub('{' + 'id' + '}', CGI.escape(id.to_s)).sub('{' + 'name' + '}', CGI.escape(name.to_s))

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
      return_type = opts[:return_type] || 'OrderSerializerNoBinaryFields' 

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
        @api_client.config.logger.debug "API called: OrdersApi#orders_extra_fields_read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Presents list of previous and current guest's orders
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page A page number within the paginated result set.
    # @return [InlineResponse2006]
    def orders_list(opts = {})
      data, _status_code, _headers = orders_list_with_http_info(opts)
      data
    end

    # Presents list of previous and current guest&#39;s orders
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page A page number within the paginated result set.
    # @return [Array<(InlineResponse2006, Integer, Hash)>] InlineResponse2006 data, response status code and response headers
    def orders_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.orders_list ...'
      end
      # resource path
      local_var_path = '/orders/'

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
      return_type = opts[:return_type] || 'InlineResponse2006' 

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
        @api_client.config.logger.debug "API called: OrdersApi#orders_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Presents list of previous and current guest's orders
    # @param id [Integer] A unique integer value identifying this заказ.
    # @param data [Order] 
    # @param [Hash] opts the optional parameters
    # @return [Order]
    def orders_partial_update(id, data, opts = {})
      data, _status_code, _headers = orders_partial_update_with_http_info(id, data, opts)
      data
    end

    # Presents list of previous and current guest&#39;s orders
    # @param id [Integer] A unique integer value identifying this заказ.
    # @param data [Order] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Order, Integer, Hash)>] Order data, response status code and response headers
    def orders_partial_update_with_http_info(id, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.orders_partial_update ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OrdersApi.orders_partial_update"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling OrdersApi.orders_partial_update"
      end
      # resource path
      local_var_path = '/orders/{id}/'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'Order' 

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
        @api_client.config.logger.debug "API called: OrdersApi#orders_partial_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Presents list of previous and current guest's orders
    # @param id [Integer] A unique integer value identifying this заказ.
    # @param [Hash] opts the optional parameters
    # @return [OrderSerializerNoBinaryFields]
    def orders_read(id, opts = {})
      data, _status_code, _headers = orders_read_with_http_info(id, opts)
      data
    end

    # Presents list of previous and current guest&#39;s orders
    # @param id [Integer] A unique integer value identifying this заказ.
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrderSerializerNoBinaryFields, Integer, Hash)>] OrderSerializerNoBinaryFields data, response status code and response headers
    def orders_read_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.orders_read ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OrdersApi.orders_read"
      end
      # resource path
      local_var_path = '/orders/{id}/'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'OrderSerializerNoBinaryFields' 

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
        @api_client.config.logger.debug "API called: OrdersApi#orders_read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Presents list of previous and current guest's orders
    # @param id [Integer] A unique integer value identifying this заказ.
    # @param data [Order] 
    # @param [Hash] opts the optional parameters
    # @return [Order]
    def orders_update(id, data, opts = {})
      data, _status_code, _headers = orders_update_with_http_info(id, data, opts)
      data
    end

    # Presents list of previous and current guest&#39;s orders
    # @param id [Integer] A unique integer value identifying this заказ.
    # @param data [Order] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Order, Integer, Hash)>] Order data, response status code and response headers
    def orders_update_with_http_info(id, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.orders_update ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OrdersApi.orders_update"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling OrdersApi.orders_update"
      end
      # resource path
      local_var_path = '/orders/{id}/'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'Order' 

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
        @api_client.config.logger.debug "API called: OrdersApi#orders_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
