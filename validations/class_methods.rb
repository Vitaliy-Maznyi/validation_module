module Validations
  module ClassMethods
    def validate(*attributes)
      attribute = attributes.slice(0)
      validators_rules = attributes.slice(1)
      raise ArgumentError, 'You need to supply an attribute' if !attribute.is_a?(Symbol) || attributes.empty?
      raise ArgumentError, "You need to supply at least one validation rule for #{attribute}" if validators_rules.nil?

      validators_rules.each do |validator_type, expectation|
        ::Validations::Context.add_validator(attribute, validator_type, expectation)
      end
    end
  end
end
