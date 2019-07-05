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
  class OrderItem
    attr_accessor :id

    attr_accessor :order_id

    attr_accessor :external_id

    attr_accessor :date

    attr_accessor :group_id

    attr_accessor :revenue_type

    attr_accessor :code

    attr_accessor :name

    attr_accessor :sub_code

    attr_accessor :amount

    attr_accessor :amount_before_discount

    attr_accessor :included_tax_amount

    attr_accessor :quantity

    attr_accessor :is_scheduled

    attr_accessor :date_created

    attr_accessor :date_modified

    attr_accessor :ext_date_created

    attr_accessor :ext_date_modified

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'order_id' => :'order_id',
        :'external_id' => :'external_id',
        :'date' => :'date',
        :'group_id' => :'group_id',
        :'revenue_type' => :'revenue_type',
        :'code' => :'code',
        :'name' => :'name',
        :'sub_code' => :'sub_code',
        :'amount' => :'amount',
        :'amount_before_discount' => :'amount_before_discount',
        :'included_tax_amount' => :'included_tax_amount',
        :'quantity' => :'quantity',
        :'is_scheduled' => :'is_scheduled',
        :'date_created' => :'date_created',
        :'date_modified' => :'date_modified',
        :'ext_date_created' => :'ext_date_created',
        :'ext_date_modified' => :'ext_date_modified'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Integer',
        :'order_id' => :'String',
        :'external_id' => :'String',
        :'date' => :'DateTime',
        :'group_id' => :'String',
        :'revenue_type' => :'String',
        :'code' => :'String',
        :'name' => :'String',
        :'sub_code' => :'String',
        :'amount' => :'String',
        :'amount_before_discount' => :'String',
        :'included_tax_amount' => :'String',
        :'quantity' => :'String',
        :'is_scheduled' => :'Boolean',
        :'date_created' => :'DateTime',
        :'date_modified' => :'DateTime',
        :'ext_date_created' => :'DateTime',
        :'ext_date_modified' => :'DateTime'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `CheckpointCrmClient::OrderItem` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CheckpointCrmClient::OrderItem`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'order_id')
        self.order_id = attributes[:'order_id']
      end

      if attributes.key?(:'external_id')
        self.external_id = attributes[:'external_id']
      end

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.key?(:'group_id')
        self.group_id = attributes[:'group_id']
      end

      if attributes.key?(:'revenue_type')
        self.revenue_type = attributes[:'revenue_type']
      end

      if attributes.key?(:'code')
        self.code = attributes[:'code']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'sub_code')
        self.sub_code = attributes[:'sub_code']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'amount_before_discount')
        self.amount_before_discount = attributes[:'amount_before_discount']
      end

      if attributes.key?(:'included_tax_amount')
        self.included_tax_amount = attributes[:'included_tax_amount']
      end

      if attributes.key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.key?(:'is_scheduled')
        self.is_scheduled = attributes[:'is_scheduled']
      end

      if attributes.key?(:'date_created')
        self.date_created = attributes[:'date_created']
      end

      if attributes.key?(:'date_modified')
        self.date_modified = attributes[:'date_modified']
      end

      if attributes.key?(:'ext_date_created')
        self.ext_date_created = attributes[:'ext_date_created']
      end

      if attributes.key?(:'ext_date_modified')
        self.ext_date_modified = attributes[:'ext_date_modified']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@external_id.nil? && @external_id.to_s.length > 64
        invalid_properties.push('invalid value for "external_id", the character length must be smaller than or equal to 64.')
      end

      if @date.nil?
        invalid_properties.push('invalid value for "date", date cannot be nil.')
      end

      if !@group_id.nil? && @group_id.to_s.length > 36
        invalid_properties.push('invalid value for "group_id", the character length must be smaller than or equal to 36.')
      end

      if !@revenue_type.nil? && @revenue_type.to_s.length > 64
        invalid_properties.push('invalid value for "revenue_type", the character length must be smaller than or equal to 64.')
      end

      if @code.nil?
        invalid_properties.push('invalid value for "code", code cannot be nil.')
      end

      if @code.to_s.length > 64
        invalid_properties.push('invalid value for "code", the character length must be smaller than or equal to 64.')
      end

      if @code.to_s.length < 1
        invalid_properties.push('invalid value for "code", the character length must be great than or equal to 1.')
      end

      if !@name.nil? && @name.to_s.length > 256
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 256.')
      end

      if !@sub_code.nil? && @sub_code.to_s.length > 64
        invalid_properties.push('invalid value for "sub_code", the character length must be smaller than or equal to 64.')
      end

      if @amount.nil?
        invalid_properties.push('invalid value for "amount", amount cannot be nil.')
      end

      if @amount_before_discount.nil?
        invalid_properties.push('invalid value for "amount_before_discount", amount_before_discount cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@external_id.nil? && @external_id.to_s.length > 64
      return false if @date.nil?
      return false if !@group_id.nil? && @group_id.to_s.length > 36
      return false if !@revenue_type.nil? && @revenue_type.to_s.length > 64
      return false if @code.nil?
      return false if @code.to_s.length > 64
      return false if @code.to_s.length < 1
      return false if !@name.nil? && @name.to_s.length > 256
      return false if !@sub_code.nil? && @sub_code.to_s.length > 64
      return false if @amount.nil?
      return false if @amount_before_discount.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] external_id Value to be assigned
    def external_id=(external_id)
      if !external_id.nil? && external_id.to_s.length > 64
        fail ArgumentError, 'invalid value for "external_id", the character length must be smaller than or equal to 64.'
      end

      @external_id = external_id
    end

    # Custom attribute writer method with validation
    # @param [Object] group_id Value to be assigned
    def group_id=(group_id)
      if !group_id.nil? && group_id.to_s.length > 36
        fail ArgumentError, 'invalid value for "group_id", the character length must be smaller than or equal to 36.'
      end

      @group_id = group_id
    end

    # Custom attribute writer method with validation
    # @param [Object] revenue_type Value to be assigned
    def revenue_type=(revenue_type)
      if !revenue_type.nil? && revenue_type.to_s.length > 64
        fail ArgumentError, 'invalid value for "revenue_type", the character length must be smaller than or equal to 64.'
      end

      @revenue_type = revenue_type
    end

    # Custom attribute writer method with validation
    # @param [Object] code Value to be assigned
    def code=(code)
      if code.nil?
        fail ArgumentError, 'code cannot be nil'
      end

      if code.to_s.length > 64
        fail ArgumentError, 'invalid value for "code", the character length must be smaller than or equal to 64.'
      end

      if code.to_s.length < 1
        fail ArgumentError, 'invalid value for "code", the character length must be great than or equal to 1.'
      end

      @code = code
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if !name.nil? && name.to_s.length > 256
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 256.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] sub_code Value to be assigned
    def sub_code=(sub_code)
      if !sub_code.nil? && sub_code.to_s.length > 64
        fail ArgumentError, 'invalid value for "sub_code", the character length must be smaller than or equal to 64.'
      end

      @sub_code = sub_code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          order_id == o.order_id &&
          external_id == o.external_id &&
          date == o.date &&
          group_id == o.group_id &&
          revenue_type == o.revenue_type &&
          code == o.code &&
          name == o.name &&
          sub_code == o.sub_code &&
          amount == o.amount &&
          amount_before_discount == o.amount_before_discount &&
          included_tax_amount == o.included_tax_amount &&
          quantity == o.quantity &&
          is_scheduled == o.is_scheduled &&
          date_created == o.date_created &&
          date_modified == o.date_modified &&
          ext_date_created == o.ext_date_created &&
          ext_date_modified == o.ext_date_modified
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, order_id, external_id, date, group_id, revenue_type, code, name, sub_code, amount, amount_before_discount, included_tax_amount, quantity, is_scheduled, date_created, date_modified, ext_date_created, ext_date_modified].hash
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