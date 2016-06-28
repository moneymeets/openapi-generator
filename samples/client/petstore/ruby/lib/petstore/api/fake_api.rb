=begin
#Swagger Petstore

#This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\

OpenAPI spec version: 1.0.0
Contact: apiteam@swagger.io
Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require "uri"

module Petstore
  class FakeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # To test code injection */ 
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :test_code_inject__end To test code injection */ 
    # @return [nil]
    def test_code_inject__end(opts = {})
      test_code_inject__end_with_http_info(opts)
      return nil
    end

    # To test code injection */ 
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :test_code_inject__end To test code injection */ 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def test_code_inject__end_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FakeApi.test_code_inject__end ..."
      end
      # resource path
      local_var_path = "/fake".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', '*/ end']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json', '*/ =end));(phpinfo(']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}
      form_params["test code inject */ &#x3D;end"] = opts[:'test_code_inject__end'] if !opts[:'test_code_inject__end'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FakeApi#test_code_inject__end\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Fake endpoint for testing various parameters 假端點 偽のエンドポイント 가짜 엔드 포인트 
    # Fake endpoint for testing various parameters 假端點 偽のエンドポイント 가짜 엔드 포인트 
    # @param number None
    # @param double None
    # @param string None
    # @param byte None
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :integer None
    # @option opts [Integer] :int32 None
    # @option opts [Integer] :int64 None
    # @option opts [Float] :float None
    # @option opts [String] :binary None
    # @option opts [Date] :date None
    # @option opts [DateTime] :date_time None
    # @option opts [String] :password None
    # @return [nil]
    def test_endpoint_parameters(number, double, string, byte, opts = {})
      test_endpoint_parameters_with_http_info(number, double, string, byte, opts)
      return nil
    end

    # Fake endpoint for testing various parameters 假端點 偽のエンドポイント 가짜 엔드 포인트 
    # Fake endpoint for testing various parameters 假端點 偽のエンドポイント 가짜 엔드 포인트 
    # @param number None
    # @param double None
    # @param string None
    # @param byte None
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :integer None
    # @option opts [Integer] :int32 None
    # @option opts [Integer] :int64 None
    # @option opts [Float] :float None
    # @option opts [String] :binary None
    # @option opts [Date] :date None
    # @option opts [DateTime] :date_time None
    # @option opts [String] :password None
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def test_endpoint_parameters_with_http_info(number, double, string, byte, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FakeApi.test_endpoint_parameters ..."
      end
      # verify the required parameter 'number' is set
      fail ArgumentError, "Missing the required parameter 'number' when calling FakeApi.test_endpoint_parameters" if number.nil?
      if number > 543.2
        fail ArgumentError, 'invalid value for "number" when calling FakeApi.test_endpoint_parameters, must be smaller than or equal to 543.2.'
      end

      if number < 32.1
        fail ArgumentError, 'invalid value for "number" when calling FakeApi.test_endpoint_parameters, must be greater than or equal to 32.1.'
      end

      # verify the required parameter 'double' is set
      fail ArgumentError, "Missing the required parameter 'double' when calling FakeApi.test_endpoint_parameters" if double.nil?
      if double > 123.4
        fail ArgumentError, 'invalid value for "double" when calling FakeApi.test_endpoint_parameters, must be smaller than or equal to 123.4.'
      end

      if double < 67.8
        fail ArgumentError, 'invalid value for "double" when calling FakeApi.test_endpoint_parameters, must be greater than or equal to 67.8.'
      end

      # verify the required parameter 'string' is set
      fail ArgumentError, "Missing the required parameter 'string' when calling FakeApi.test_endpoint_parameters" if string.nil?
      if string !~ Regexp.new(/[a-z]/i)
        fail ArgumentError, 'invalid value for "string" when calling FakeApi.test_endpoint_parameters, must conform to the pattern /[a-z]/i.'
      end

      # verify the required parameter 'byte' is set
      fail ArgumentError, "Missing the required parameter 'byte' when calling FakeApi.test_endpoint_parameters" if byte.nil?
      if opts[:'integer'] > 100.0
        fail ArgumentError, 'invalid value for "opts[:"integer"]" when calling FakeApi.test_endpoint_parameters, must be smaller than or equal to 100.0.'
      end

      if opts[:'integer'] < 10.0
        fail ArgumentError, 'invalid value for "opts[:"integer"]" when calling FakeApi.test_endpoint_parameters, must be greater than or equal to 10.0.'
      end

      if opts[:'int32'] > 200.0
        fail ArgumentError, 'invalid value for "opts[:"int32"]" when calling FakeApi.test_endpoint_parameters, must be smaller than or equal to 200.0.'
      end

      if opts[:'int32'] < 20.0
        fail ArgumentError, 'invalid value for "opts[:"int32"]" when calling FakeApi.test_endpoint_parameters, must be greater than or equal to 20.0.'
      end

      if opts[:'float'] > 987.6
        fail ArgumentError, 'invalid value for "opts[:"float"]" when calling FakeApi.test_endpoint_parameters, must be smaller than or equal to 987.6.'
      end

      if opts[:'password'].to_s.length > 64
        fail ArgumentError, 'invalid value for "opts[:"password"]" when calling FakeApi.test_endpoint_parameters, the character length must be smaller than or equal to 64.'
      end

      if opts[:'password'].to_s.length < 10
        fail ArgumentError, 'invalid value for "opts[:"password"]" when calling FakeApi.test_endpoint_parameters, the character length must be great than or equal to 10.'
      end

      # resource path
      local_var_path = "/fake".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/xml; charset=utf-8', 'application/json; charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/xml; charset=utf-8', 'application/json; charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}
      form_params["number"] = number
      form_params["double"] = double
      form_params["string"] = string
      form_params["byte"] = byte
      form_params["integer"] = opts[:'integer'] if !opts[:'integer'].nil?
      form_params["int32"] = opts[:'int32'] if !opts[:'int32'].nil?
      form_params["int64"] = opts[:'int64'] if !opts[:'int64'].nil?
      form_params["float"] = opts[:'float'] if !opts[:'float'].nil?
      form_params["binary"] = opts[:'binary'] if !opts[:'binary'].nil?
      form_params["date"] = opts[:'date'] if !opts[:'date'].nil?
      form_params["dateTime"] = opts[:'date_time'] if !opts[:'date_time'].nil?
      form_params["password"] = opts[:'password'] if !opts[:'password'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FakeApi#test_endpoint_parameters\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # To test enum query parameters
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :enum_query_string Query parameter enum test (string) (default to -efg)
    # @option opts [Float] :enum_query_integer Query parameter enum test (double)
    # @option opts [Float] :enum_query_double Query parameter enum test (double)
    # @return [nil]
    def test_enum_query_parameters(opts = {})
      test_enum_query_parameters_with_http_info(opts)
      return nil
    end

    # To test enum query parameters
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :enum_query_string Query parameter enum test (string)
    # @option opts [Float] :enum_query_integer Query parameter enum test (double)
    # @option opts [Float] :enum_query_double Query parameter enum test (double)
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def test_enum_query_parameters_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FakeApi.test_enum_query_parameters ..."
      end
      if opts[:'enum_query_string'] && !['_abc', '-efg', '(xyz)'].include?(opts[:'enum_query_string'])
        fail ArgumentError, 'invalid value for "enum_query_string", must be one of _abc, -efg, (xyz)'
      end
      # resource path
      local_var_path = "/fake".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'enum_query_integer'] = opts[:'enum_query_integer'] if !opts[:'enum_query_integer'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}
      form_params["enum_query_string"] = opts[:'enum_query_string'] if !opts[:'enum_query_string'].nil?
      form_params["enum_query_double"] = opts[:'enum_query_double'] if !opts[:'enum_query_double'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FakeApi#test_enum_query_parameters\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
