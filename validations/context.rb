module Validations
  module Context
    extend self

    VALIDATORS_MODULES = {
      absence: ::Validation::Absence,
      presence: ::Validation::Presence,
      format: ::Validation::Format,
      type: ::Validation::Type,
    }

    def validators
      @validators ||= []
    end

    def errors
      @errors ||= []
    end

    def add_validator(attribute, validator_type, expectation)
      validators << {
        attribute: attribute,
        module: VALIDATORS_MODULES[validator_type],
        expectation: expectation
      }
    end

    def add_error(attribute, msg)
      errors << {
        attribute => msg
      }
    end
  end
end
