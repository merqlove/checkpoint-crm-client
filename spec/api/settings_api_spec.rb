=begin
#Checkpoint CRM API

#Checkpoint CRM API

The version of the OpenAPI document: v1
Contact: szhizhenko@sanatorium-is.ru
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.2

=end

require 'spec_helper'
require 'json'

# Unit tests for CheckpointCrmClient::SettingsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SettingsApi' do
  before do
    # run before each test
    @api_instance = CheckpointCrmClient::SettingsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SettingsApi' do
    it 'should create an instance of SettingsApi' do
      expect(@api_instance).to be_instance_of(CheckpointCrmClient::SettingsApi)
    end
  end

  # unit tests for settings_list
  # Loyalty system&#39;s settings resource
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page A page number within the paginated result set.
  # @return [InlineResponse20010]
  describe 'settings_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for settings_read
  # Loyalty system&#39;s settings resource
  # @param id A unique integer value identifying this настройки.
  # @param [Hash] opts the optional parameters
  # @return [Setting]
  describe 'settings_read test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end