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
  class Setting
    attr_accessor :ext_date_created

    attr_accessor :ext_date_modified

    attr_accessor :property_name

    attr_accessor :system_name

    attr_accessor :main_site

    attr_accessor :booking_site

    attr_accessor :without_cards

    attr_accessor :currency_name

    attr_accessor :currency_name_some

    attr_accessor :currency_name_many

    attr_accessor :twitter

    attr_accessor :facebook

    attr_accessor :instagram

    attr_accessor :vkontakte

    attr_accessor :login_image_bg

    attr_accessor :header_image_bg

    attr_accessor :custom_css

    attr_accessor :auth_field

    attr_accessor :last_time_cancel_expirable_points

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'ext_date_created' => :'ext_date_created',
        :'ext_date_modified' => :'ext_date_modified',
        :'property_name' => :'property_name',
        :'system_name' => :'system_name',
        :'main_site' => :'main_site',
        :'booking_site' => :'booking_site',
        :'without_cards' => :'without_cards',
        :'currency_name' => :'currency_name',
        :'currency_name_some' => :'currency_name_some',
        :'currency_name_many' => :'currency_name_many',
        :'twitter' => :'twitter',
        :'facebook' => :'facebook',
        :'instagram' => :'instagram',
        :'vkontakte' => :'vkontakte',
        :'login_image_bg' => :'login_image_bg',
        :'header_image_bg' => :'header_image_bg',
        :'custom_css' => :'custom_css',
        :'auth_field' => :'auth_field',
        :'last_time_cancel_expirable_points' => :'last_time_cancel_expirable_points'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'ext_date_created' => :'DateTime',
        :'ext_date_modified' => :'DateTime',
        :'property_name' => :'String',
        :'system_name' => :'String',
        :'main_site' => :'String',
        :'booking_site' => :'String',
        :'without_cards' => :'Boolean',
        :'currency_name' => :'String',
        :'currency_name_some' => :'String',
        :'currency_name_many' => :'String',
        :'twitter' => :'String',
        :'facebook' => :'String',
        :'instagram' => :'String',
        :'vkontakte' => :'String',
        :'login_image_bg' => :'String',
        :'header_image_bg' => :'String',
        :'custom_css' => :'String',
        :'auth_field' => :'String',
        :'last_time_cancel_expirable_points' => :'Date'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `CheckpointCrmClient::Setting` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CheckpointCrmClient::Setting`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'ext_date_created')
        self.ext_date_created = attributes[:'ext_date_created']
      end

      if attributes.key?(:'ext_date_modified')
        self.ext_date_modified = attributes[:'ext_date_modified']
      end

      if attributes.key?(:'property_name')
        self.property_name = attributes[:'property_name']
      end

      if attributes.key?(:'system_name')
        self.system_name = attributes[:'system_name']
      end

      if attributes.key?(:'main_site')
        self.main_site = attributes[:'main_site']
      end

      if attributes.key?(:'booking_site')
        self.booking_site = attributes[:'booking_site']
      end

      if attributes.key?(:'without_cards')
        self.without_cards = attributes[:'without_cards']
      end

      if attributes.key?(:'currency_name')
        self.currency_name = attributes[:'currency_name']
      end

      if attributes.key?(:'currency_name_some')
        self.currency_name_some = attributes[:'currency_name_some']
      end

      if attributes.key?(:'currency_name_many')
        self.currency_name_many = attributes[:'currency_name_many']
      end

      if attributes.key?(:'twitter')
        self.twitter = attributes[:'twitter']
      end

      if attributes.key?(:'facebook')
        self.facebook = attributes[:'facebook']
      end

      if attributes.key?(:'instagram')
        self.instagram = attributes[:'instagram']
      end

      if attributes.key?(:'vkontakte')
        self.vkontakte = attributes[:'vkontakte']
      end

      if attributes.key?(:'login_image_bg')
        self.login_image_bg = attributes[:'login_image_bg']
      end

      if attributes.key?(:'header_image_bg')
        self.header_image_bg = attributes[:'header_image_bg']
      end

      if attributes.key?(:'custom_css')
        self.custom_css = attributes[:'custom_css']
      end

      if attributes.key?(:'auth_field')
        self.auth_field = attributes[:'auth_field']
      end

      if attributes.key?(:'last_time_cancel_expirable_points')
        self.last_time_cancel_expirable_points = attributes[:'last_time_cancel_expirable_points']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @property_name.nil?
        invalid_properties.push('invalid value for "property_name", property_name cannot be nil.')
      end

      if @property_name.to_s.length > 256
        invalid_properties.push('invalid value for "property_name", the character length must be smaller than or equal to 256.')
      end

      if @property_name.to_s.length < 1
        invalid_properties.push('invalid value for "property_name", the character length must be great than or equal to 1.')
      end

      if @system_name.nil?
        invalid_properties.push('invalid value for "system_name", system_name cannot be nil.')
      end

      if @system_name.to_s.length > 256
        invalid_properties.push('invalid value for "system_name", the character length must be smaller than or equal to 256.')
      end

      if @system_name.to_s.length < 1
        invalid_properties.push('invalid value for "system_name", the character length must be great than or equal to 1.')
      end

      if !@main_site.nil? && @main_site.to_s.length > 256
        invalid_properties.push('invalid value for "main_site", the character length must be smaller than or equal to 256.')
      end

      if !@booking_site.nil? && @booking_site.to_s.length > 256
        invalid_properties.push('invalid value for "booking_site", the character length must be smaller than or equal to 256.')
      end

      if !@currency_name.nil? && @currency_name.to_s.length > 64
        invalid_properties.push('invalid value for "currency_name", the character length must be smaller than or equal to 64.')
      end

      if !@currency_name_some.nil? && @currency_name_some.to_s.length > 64
        invalid_properties.push('invalid value for "currency_name_some", the character length must be smaller than or equal to 64.')
      end

      if !@currency_name_many.nil? && @currency_name_many.to_s.length > 64
        invalid_properties.push('invalid value for "currency_name_many", the character length must be smaller than or equal to 64.')
      end

      if !@twitter.nil? && @twitter.to_s.length > 256
        invalid_properties.push('invalid value for "twitter", the character length must be smaller than or equal to 256.')
      end

      if !@facebook.nil? && @facebook.to_s.length > 256
        invalid_properties.push('invalid value for "facebook", the character length must be smaller than or equal to 256.')
      end

      if !@instagram.nil? && @instagram.to_s.length > 256
        invalid_properties.push('invalid value for "instagram", the character length must be smaller than or equal to 256.')
      end

      if !@vkontakte.nil? && @vkontakte.to_s.length > 256
        invalid_properties.push('invalid value for "vkontakte", the character length must be smaller than or equal to 256.')
      end

      if !@custom_css.nil? && @custom_css.to_s.length > 200
        invalid_properties.push('invalid value for "custom_css", the character length must be smaller than or equal to 200.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @property_name.nil?
      return false if @property_name.to_s.length > 256
      return false if @property_name.to_s.length < 1
      return false if @system_name.nil?
      return false if @system_name.to_s.length > 256
      return false if @system_name.to_s.length < 1
      return false if !@main_site.nil? && @main_site.to_s.length > 256
      return false if !@booking_site.nil? && @booking_site.to_s.length > 256
      return false if !@currency_name.nil? && @currency_name.to_s.length > 64
      return false if !@currency_name_some.nil? && @currency_name_some.to_s.length > 64
      return false if !@currency_name_many.nil? && @currency_name_many.to_s.length > 64
      return false if !@twitter.nil? && @twitter.to_s.length > 256
      return false if !@facebook.nil? && @facebook.to_s.length > 256
      return false if !@instagram.nil? && @instagram.to_s.length > 256
      return false if !@vkontakte.nil? && @vkontakte.to_s.length > 256
      return false if !@custom_css.nil? && @custom_css.to_s.length > 200
      auth_field_validator = EnumAttributeValidator.new('String', ["email", "phone"])
      return false unless auth_field_validator.valid?(@auth_field)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] property_name Value to be assigned
    def property_name=(property_name)
      if property_name.nil?
        fail ArgumentError, 'property_name cannot be nil'
      end

      if property_name.to_s.length > 256
        fail ArgumentError, 'invalid value for "property_name", the character length must be smaller than or equal to 256.'
      end

      if property_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "property_name", the character length must be great than or equal to 1.'
      end

      @property_name = property_name
    end

    # Custom attribute writer method with validation
    # @param [Object] system_name Value to be assigned
    def system_name=(system_name)
      if system_name.nil?
        fail ArgumentError, 'system_name cannot be nil'
      end

      if system_name.to_s.length > 256
        fail ArgumentError, 'invalid value for "system_name", the character length must be smaller than or equal to 256.'
      end

      if system_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "system_name", the character length must be great than or equal to 1.'
      end

      @system_name = system_name
    end

    # Custom attribute writer method with validation
    # @param [Object] main_site Value to be assigned
    def main_site=(main_site)
      if !main_site.nil? && main_site.to_s.length > 256
        fail ArgumentError, 'invalid value for "main_site", the character length must be smaller than or equal to 256.'
      end

      @main_site = main_site
    end

    # Custom attribute writer method with validation
    # @param [Object] booking_site Value to be assigned
    def booking_site=(booking_site)
      if !booking_site.nil? && booking_site.to_s.length > 256
        fail ArgumentError, 'invalid value for "booking_site", the character length must be smaller than or equal to 256.'
      end

      @booking_site = booking_site
    end

    # Custom attribute writer method with validation
    # @param [Object] currency_name Value to be assigned
    def currency_name=(currency_name)
      if !currency_name.nil? && currency_name.to_s.length > 64
        fail ArgumentError, 'invalid value for "currency_name", the character length must be smaller than or equal to 64.'
      end

      @currency_name = currency_name
    end

    # Custom attribute writer method with validation
    # @param [Object] currency_name_some Value to be assigned
    def currency_name_some=(currency_name_some)
      if !currency_name_some.nil? && currency_name_some.to_s.length > 64
        fail ArgumentError, 'invalid value for "currency_name_some", the character length must be smaller than or equal to 64.'
      end

      @currency_name_some = currency_name_some
    end

    # Custom attribute writer method with validation
    # @param [Object] currency_name_many Value to be assigned
    def currency_name_many=(currency_name_many)
      if !currency_name_many.nil? && currency_name_many.to_s.length > 64
        fail ArgumentError, 'invalid value for "currency_name_many", the character length must be smaller than or equal to 64.'
      end

      @currency_name_many = currency_name_many
    end

    # Custom attribute writer method with validation
    # @param [Object] twitter Value to be assigned
    def twitter=(twitter)
      if !twitter.nil? && twitter.to_s.length > 256
        fail ArgumentError, 'invalid value for "twitter", the character length must be smaller than or equal to 256.'
      end

      @twitter = twitter
    end

    # Custom attribute writer method with validation
    # @param [Object] facebook Value to be assigned
    def facebook=(facebook)
      if !facebook.nil? && facebook.to_s.length > 256
        fail ArgumentError, 'invalid value for "facebook", the character length must be smaller than or equal to 256.'
      end

      @facebook = facebook
    end

    # Custom attribute writer method with validation
    # @param [Object] instagram Value to be assigned
    def instagram=(instagram)
      if !instagram.nil? && instagram.to_s.length > 256
        fail ArgumentError, 'invalid value for "instagram", the character length must be smaller than or equal to 256.'
      end

      @instagram = instagram
    end

    # Custom attribute writer method with validation
    # @param [Object] vkontakte Value to be assigned
    def vkontakte=(vkontakte)
      if !vkontakte.nil? && vkontakte.to_s.length > 256
        fail ArgumentError, 'invalid value for "vkontakte", the character length must be smaller than or equal to 256.'
      end

      @vkontakte = vkontakte
    end

    # Custom attribute writer method with validation
    # @param [Object] custom_css Value to be assigned
    def custom_css=(custom_css)
      if !custom_css.nil? && custom_css.to_s.length > 200
        fail ArgumentError, 'invalid value for "custom_css", the character length must be smaller than or equal to 200.'
      end

      @custom_css = custom_css
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] auth_field Object to be assigned
    def auth_field=(auth_field)
      validator = EnumAttributeValidator.new('String', ["email", "phone"])
      unless validator.valid?(auth_field)
        fail ArgumentError, "invalid value for \"auth_field\", must be one of #{validator.allowable_values}."
      end
      @auth_field = auth_field
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          ext_date_created == o.ext_date_created &&
          ext_date_modified == o.ext_date_modified &&
          property_name == o.property_name &&
          system_name == o.system_name &&
          main_site == o.main_site &&
          booking_site == o.booking_site &&
          without_cards == o.without_cards &&
          currency_name == o.currency_name &&
          currency_name_some == o.currency_name_some &&
          currency_name_many == o.currency_name_many &&
          twitter == o.twitter &&
          facebook == o.facebook &&
          instagram == o.instagram &&
          vkontakte == o.vkontakte &&
          login_image_bg == o.login_image_bg &&
          header_image_bg == o.header_image_bg &&
          custom_css == o.custom_css &&
          auth_field == o.auth_field &&
          last_time_cancel_expirable_points == o.last_time_cancel_expirable_points
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [ext_date_created, ext_date_modified, property_name, system_name, main_site, booking_site, without_cards, currency_name, currency_name_some, currency_name_many, twitter, facebook, instagram, vkontakte, login_image_bg, header_image_bg, custom_css, auth_field, last_time_cancel_expirable_points].hash
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