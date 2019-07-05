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
  class PointOfSalesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # @param data [PointOfSale] 
    # @param [Hash] opts the optional parameters
    # @return [PointOfSale]
    def point_of_sales_create(data, opts = {})
      data, _status_code, _headers = point_of_sales_create_with_http_info(data, opts)
      data
    end

    # @param data [PointOfSale] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PointOfSale, Integer, Hash)>] PointOfSale data, response status code and response headers
    def point_of_sales_create_with_http_info(data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PointOfSalesApi.point_of_sales_create ...'
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling PointOfSalesApi.point_of_sales_create"
      end
      # resource path
      local_var_path = '/point-of-sales/'

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
      return_type = opts[:return_type] || 'PointOfSale' 

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
        @api_client.config.logger.debug "API called: PointOfSalesApi#point_of_sales_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param id [Integer] A unique integer value identifying this точка продаж.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def point_of_sales_delete(id, opts = {})
      point_of_sales_delete_with_http_info(id, opts)
      nil
    end

    # @param id [Integer] A unique integer value identifying this точка продаж.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def point_of_sales_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PointOfSalesApi.point_of_sales_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PointOfSalesApi.point_of_sales_delete"
      end
      # resource path
      local_var_path = '/point-of-sales/{id}/'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        @api_client.config.logger.debug "API called: PointOfSalesApi#point_of_sales_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param [Hash] opts the optional parameters
    # @option opts [String] :code 
    # @option opts [String] :name 
    # @option opts [Integer] :page A page number within the paginated result set.
    # @return [InlineResponse2008]
    def point_of_sales_list(opts = {})
      data, _status_code, _headers = point_of_sales_list_with_http_info(opts)
      data
    end

    # @param [Hash] opts the optional parameters
    # @option opts [String] :code 
    # @option opts [String] :name 
    # @option opts [Integer] :page A page number within the paginated result set.
    # @return [Array<(InlineResponse2008, Integer, Hash)>] InlineResponse2008 data, response status code and response headers
    def point_of_sales_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PointOfSalesApi.point_of_sales_list ...'
      end
      # resource path
      local_var_path = '/point-of-sales/'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'code'] = opts[:'code'] if !opts[:'code'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
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
      return_type = opts[:return_type] || 'InlineResponse2008' 

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
        @api_client.config.logger.debug "API called: PointOfSalesApi#point_of_sales_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param external_id [String] 
    # @param pos_code [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def point_of_sales_orders_eid_create(external_id, pos_code, opts = {})
      point_of_sales_orders_eid_create_with_http_info(external_id, pos_code, opts)
      nil
    end

    # @param external_id [String] 
    # @param pos_code [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def point_of_sales_orders_eid_create_with_http_info(external_id, pos_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PointOfSalesApi.point_of_sales_orders_eid_create ...'
      end
      # verify the required parameter 'external_id' is set
      if @api_client.config.client_side_validation && external_id.nil?
        fail ArgumentError, "Missing the required parameter 'external_id' when calling PointOfSalesApi.point_of_sales_orders_eid_create"
      end
      # verify the required parameter 'pos_code' is set
      if @api_client.config.client_side_validation && pos_code.nil?
        fail ArgumentError, "Missing the required parameter 'pos_code' when calling PointOfSalesApi.point_of_sales_orders_eid_create"
      end
      # resource path
      local_var_path = '/point-of-sales/{pos_code}/orders/eid/{external_id}/'.sub('{' + 'external_id' + '}', CGI.escape(external_id.to_s)).sub('{' + 'pos_code' + '}', CGI.escape(pos_code.to_s))

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
        @api_client.config.logger.debug "API called: PointOfSalesApi#point_of_sales_orders_eid_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param external_id [String] 
    # @param pos_code [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def point_of_sales_orders_eid_read(external_id, pos_code, opts = {})
      point_of_sales_orders_eid_read_with_http_info(external_id, pos_code, opts)
      nil
    end

    # @param external_id [String] 
    # @param pos_code [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def point_of_sales_orders_eid_read_with_http_info(external_id, pos_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PointOfSalesApi.point_of_sales_orders_eid_read ...'
      end
      # verify the required parameter 'external_id' is set
      if @api_client.config.client_side_validation && external_id.nil?
        fail ArgumentError, "Missing the required parameter 'external_id' when calling PointOfSalesApi.point_of_sales_orders_eid_read"
      end
      # verify the required parameter 'pos_code' is set
      if @api_client.config.client_side_validation && pos_code.nil?
        fail ArgumentError, "Missing the required parameter 'pos_code' when calling PointOfSalesApi.point_of_sales_orders_eid_read"
      end
      # resource path
      local_var_path = '/point-of-sales/{pos_code}/orders/eid/{external_id}/'.sub('{' + 'external_id' + '}', CGI.escape(external_id.to_s)).sub('{' + 'pos_code' + '}', CGI.escape(pos_code.to_s))

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
        @api_client.config.logger.debug "API called: PointOfSalesApi#point_of_sales_orders_eid_read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param id [Integer] A unique integer value identifying this точка продаж.
    # @param data [PointOfSale] 
    # @param [Hash] opts the optional parameters
    # @return [PointOfSale]
    def point_of_sales_partial_update(id, data, opts = {})
      data, _status_code, _headers = point_of_sales_partial_update_with_http_info(id, data, opts)
      data
    end

    # @param id [Integer] A unique integer value identifying this точка продаж.
    # @param data [PointOfSale] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PointOfSale, Integer, Hash)>] PointOfSale data, response status code and response headers
    def point_of_sales_partial_update_with_http_info(id, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PointOfSalesApi.point_of_sales_partial_update ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PointOfSalesApi.point_of_sales_partial_update"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling PointOfSalesApi.point_of_sales_partial_update"
      end
      # resource path
      local_var_path = '/point-of-sales/{id}/'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'PointOfSale' 

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
        @api_client.config.logger.debug "API called: PointOfSalesApi#point_of_sales_partial_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param id [Integer] A unique integer value identifying this точка продаж.
    # @param [Hash] opts the optional parameters
    # @return [PointOfSale]
    def point_of_sales_read(id, opts = {})
      data, _status_code, _headers = point_of_sales_read_with_http_info(id, opts)
      data
    end

    # @param id [Integer] A unique integer value identifying this точка продаж.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PointOfSale, Integer, Hash)>] PointOfSale data, response status code and response headers
    def point_of_sales_read_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PointOfSalesApi.point_of_sales_read ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PointOfSalesApi.point_of_sales_read"
      end
      # resource path
      local_var_path = '/point-of-sales/{id}/'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'PointOfSale' 

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
        @api_client.config.logger.debug "API called: PointOfSalesApi#point_of_sales_read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param id [Integer] A unique integer value identifying this точка продаж.
    # @param data [PointOfSale] 
    # @param [Hash] opts the optional parameters
    # @return [PointOfSale]
    def point_of_sales_update(id, data, opts = {})
      data, _status_code, _headers = point_of_sales_update_with_http_info(id, data, opts)
      data
    end

    # @param id [Integer] A unique integer value identifying this точка продаж.
    # @param data [PointOfSale] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PointOfSale, Integer, Hash)>] PointOfSale data, response status code and response headers
    def point_of_sales_update_with_http_info(id, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PointOfSalesApi.point_of_sales_update ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PointOfSalesApi.point_of_sales_update"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling PointOfSalesApi.point_of_sales_update"
      end
      # resource path
      local_var_path = '/point-of-sales/{id}/'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'PointOfSale' 

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
        @api_client.config.logger.debug "API called: PointOfSalesApi#point_of_sales_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
