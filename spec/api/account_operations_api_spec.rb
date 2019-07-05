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

# Unit tests for CheckpointCrmClient::AccountOperationsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AccountOperationsApi' do
  before do
    # run before each test
    @api_instance = CheckpointCrmClient::AccountOperationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AccountOperationsApi' do
    it 'should create an instance of AccountOperationsApi' do
      expect(@api_instance).to be_instance_of(CheckpointCrmClient::AccountOperationsApi)
    end
  end

  # unit tests for account_operations_create
  # Account operation represents transaction for charging or posting payment and level bonuses on customer&#39;s account.
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [AccountOperation]
  describe 'account_operations_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for account_operations_delete
  # Account operation represents transaction for charging or posting payment and level bonuses on customer&#39;s account.
  # @param id A unique integer value identifying this операция по счёту.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'account_operations_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for account_operations_list
  # Account operation represents transaction for charging or posting payment and level bonuses on customer&#39;s account.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :account_id 
  # @option opts [String] :order__external_id 
  # @option opts [String] :rule_id 
  # @option opts [String] :bonus_type 
  # @option opts [String] :point_of_sale__code 
  # @option opts [String] :external_id 
  # @option opts [Integer] :page A page number within the paginated result set.
  # @return [InlineResponse200]
  describe 'account_operations_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for account_operations_partial_update
  # Account operation represents transaction for charging or posting payment and level bonuses on customer&#39;s account.
  # @param id A unique integer value identifying this операция по счёту.
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [AccountOperation]
  describe 'account_operations_partial_update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for account_operations_read
  # Account operation represents transaction for charging or posting payment and level bonuses on customer&#39;s account.
  # @param id A unique integer value identifying this операция по счёту.
  # @param [Hash] opts the optional parameters
  # @return [AccountOperation]
  describe 'account_operations_read test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for account_operations_update
  # Account operation represents transaction for charging or posting payment and level bonuses on customer&#39;s account.
  # @param id A unique integer value identifying this операция по счёту.
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [AccountOperation]
  describe 'account_operations_update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end