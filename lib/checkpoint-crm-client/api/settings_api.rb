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
  class SettingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Loyalty system's settings resource
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page A page number within the paginated result set.
    # @return [InlineResponse20010]
    def settings_list(opts = {})
      data, _status_code, _headers = settings_list_with_http_info(opts)
      data
    end

    # Loyalty system&#39;s settings resource
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page A page number within the paginated result set.
    # @return [Array<(InlineResponse20010, Integer, Hash)>] InlineResponse20010 data, response status code and response headers
    def settings_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsApi.settings_list ...'
      end
      # resource path
      local_var_path = '/settings/'

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
      return_type = opts[:return_type] || 'InlineResponse20010' 

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
        @api_client.config.logger.debug "API called: SettingsApi#settings_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Loyalty system's settings resource
    # @param id [Integer] A unique integer value identifying this настройки.
    # @param [Hash] opts the optional parameters
    # @return [Setting]
    def settings_read(id, opts = {})
      data, _status_code, _headers = settings_read_with_http_info(id, opts)
      data
    end

    # Loyalty system&#39;s settings resource
    # @param id [Integer] A unique integer value identifying this настройки.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Setting, Integer, Hash)>] Setting data, response status code and response headers
    def settings_read_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsApi.settings_read ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SettingsApi.settings_read"
      end
      # resource path
      local_var_path = '/settings/{id}/'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'Setting' 

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
        @api_client.config.logger.debug "API called: SettingsApi#settings_read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
