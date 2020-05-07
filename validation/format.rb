module Validation
  module Format
    extend self

    def validate!(attribute:, value:, expectation:)
      return true if value.match?(expectation)
      raise ::Validation::RecordInvalidError, "#{attribute} format is invalid"
    end

    def validate(attribute:, value:, expectation: nil)
      return if value.match?(expectation)
      ::Validations::Context.add_error(attribute, 'format is invalid')
    end
  end
end
