module Validation
  module Absence
    extend self

    def validate!(attribute:, value:, expectation: nil)
      return true if value.blank?
      raise ::Validation::RecordInvalidError, "#{attribute} must be blank"
    end

    def validate(attribute:, value:, expectation: nil)
      return if value.blank?
      ::Validations::Context.add_error(attribute, 'must be blank')
    end
  end
end
