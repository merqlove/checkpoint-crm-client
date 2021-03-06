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

# Unit tests for CheckpointCrmClient::AccountsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AccountsApi' do
  before do
    # run before each test
    @api_instance = CheckpointCrmClient::AccountsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AccountsApi' do
    it 'should create an instance of AccountsApi' do
      expect(@api_instance).to be_instance_of(CheckpointCrmClient::AccountsApi)
    end
  end

  # unit tests for accounts_charge
  # Осуществляет списание баллов со счёта гостя. В качестве идентификаторов могут выступать как идентификатор счёта, так и номер карты лояльности. Допускаются ссылки на заказы, в рамках которых происходит оплата.
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [Account]
  describe 'accounts_charge test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for accounts_create
  # Account is the place where all bonus points balance is tracked. Points are tracked in two categories - payment and level. Payment points can be used to pay orders, level points move customer through levels/tiers.
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [Account]
  describe 'accounts_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for accounts_delete
  # Account is the place where all bonus points balance is tracked. Points are tracked in two categories - payment and level. Payment points can be used to pay orders, level points move customer through levels/tiers.
  # @param id A unique integer value identifying this счет.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'accounts_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for accounts_list
  # Account is the place where all bonus points balance is tracked. Points are tracked in two categories - payment and level. Payment points can be used to pay orders, level points move customer through levels/tiers.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page A page number within the paginated result set.
  # @return [InlineResponse2001]
  describe 'accounts_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for accounts_partial_update
  # Account is the place where all bonus points balance is tracked. Points are tracked in two categories - payment and level. Payment points can be used to pay orders, level points move customer through levels/tiers.
  # @param id A unique integer value identifying this счет.
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [Account]
  describe 'accounts_partial_update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for accounts_read
  # Account is the place where all bonus points balance is tracked. Points are tracked in two categories - payment and level. Payment points can be used to pay orders, level points move customer through levels/tiers.
  # @param id A unique integer value identifying this счет.
  # @param [Hash] opts the optional parameters
  # @return [Account]
  describe 'accounts_read test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for accounts_update
  # Account is the place where all bonus points balance is tracked. Points are tracked in two categories - payment and level. Payment points can be used to pay orders, level points move customer through levels/tiers.
  # @param id A unique integer value identifying this счет.
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [Account]
  describe 'accounts_update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
