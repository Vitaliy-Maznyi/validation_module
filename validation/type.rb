module Validation
  module Type
    extend self

    def validate!(attribute:, value:, expectation:)
      return true if value.class == expectation
      raise ::Validation::RecordInvalidError, "#{attribute} type is not valid. Expected #{expectation}"
    end

    def validate(attribute:, value:, expectation: nil)
      return if value.class == expectation
      ::Validations::Context.add_error(attribute, 'type is not valid')
    end
  end
end
