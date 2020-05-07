module Validations
  module Context
    VALIDATORS_MODULES = {
      absence: ::Validation::Absence,
      presence: ::Validation::Presence,
      format: ::Validation::Format,
      type: ::Validation::Type,
    }

    def self.validators
      @validators ||= []
    end

    def self.set_validator(attribute, validator_type, expectation)
      validators << {
        attribute: attribute,
        module: VALIDATORS_MODULES[validator_type],
        expectation: expectation
      }
    end
  end
end
