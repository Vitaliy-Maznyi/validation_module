module Validations
  module ClassMethods
    def validate(attribute, **validators_rules)
      raise ArgumentError, "You need to supply attribute" if attribute.empty?
      raise ArgumentError, "You need to supply at least one validation rule" if validators_rules.empty?

      validators_rules.each do |validator_type, expectation|
        ::Validations::Context.set_validator(attribute, validator_type, expectation)
      end
    end
  end
end
