=begin
#Checkpoint CRM API

#Checkpoint CRM API

The version of the OpenAPI document: v1
Contact: szhizhenko@sanatorium-is.ru
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.2

=end

require 'date'

module CheckpointCrmClient
  class CardForCustomer
    attr_accessor :id

    attr_accessor :card_no

    attr_accessor :current_tier

    attr_accessor :expected_tier

    attr_accessor :account

    attr_accessor :is_active

    attr_accessor :issue_date

    attr_accessor :issuer

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'card_no' => :'card_no',
        :'current_tier' => :'current_tier',
        :'expected_tier' => :'expected_tier',
        :'account' => :'account',
        :'is_active' => :'is_active',
        :'issue_date' => :'issue_date',
        :'issuer' => :'issuer'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Integer',
        :'card_no' => :'String',
        :'current_tier' => :'Tier',
        :'expected_tier' => :'Tier',
        :'account' => :'Account',
        :'is_active' => :'Boolean',
        :'issue_date' => :'DateTime',
        :'issuer' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `CheckpointCrmClient::CardForCustomer` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CheckpointCrmClient::CardForCustomer`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'card_no')
        self.card_no = attributes[:'card_no']
      end

      if attributes.key?(:'current_tier')
        self.current_tier = attributes[:'current_tier']
      end

      if attributes.key?(:'expected_tier')
        self.expected_tier = attributes[:'expected_tier']
      end

      if attributes.key?(:'account')
        self.account = attributes[:'account']
      end

      if attributes.key?(:'is_active')
        self.is_active = attributes[:'is_active']
      end

      if attributes.key?(:'issue_date')
        self.issue_date = attributes[:'issue_date']
      end

      if attributes.key?(:'issuer')
        self.issuer = attributes[:'issuer']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @card_no.nil?
        invalid_properties.push('invalid value for "card_no", card_no cannot be nil.')
      end

      if @card_no.to_s.length > 128
        invalid_properties.push('invalid value for "card_no", the character length must be smaller than or equal to 128.')
      end

      if @current_tier.nil?
        invalid_properties.push('invalid value for "current_tier", current_tier cannot be nil.')
      end

      if @expected_tier.nil?
        invalid_properties.push('invalid value for "expected_tier", expected_tier cannot be nil.')
      end

      if @account.nil?
        invalid_properties.push('invalid value for "account", account cannot be nil.')
      end

      if !@issuer.nil? && @issuer.to_s.length > 256
        invalid_properties.push('invalid value for "issuer", the character length must be smaller than or equal to 256.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @card_no.nil?
      return false if @card_no.to_s.length > 128
      return false if @current_tier.nil?
      return false if @expected_tier.nil?
      return false if @account.nil?
      return false if !@issuer.nil? && @issuer.to_s.length > 256
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] card_no Value to be assigned
    def card_no=(card_no)
      if card_no.nil?
        fail ArgumentError, 'card_no cannot be nil'
      end

      if card_no.to_s.length > 128
        fail ArgumentError, 'invalid value for "card_no", the character length must be smaller than or equal to 128.'
      end

      @card_no = card_no
    end

    # Custom attribute writer method with validation
    # @param [Object] issuer Value to be assigned
    def issuer=(issuer)
      if !issuer.nil? && issuer.to_s.length > 256
        fail ArgumentError, 'invalid value for "issuer", the character length must be smaller than or equal to 256.'
      end

      @issuer = issuer
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          card_no == o.card_no &&
          current_tier == o.current_tier &&
          expected_tier == o.expected_tier &&
          account == o.account &&
          is_active == o.is_active &&
          issue_date == o.issue_date &&
          issuer == o.issuer
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, card_no, current_tier, expected_tier, account, is_active, issue_date, issuer].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        CheckpointCrmClient.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end