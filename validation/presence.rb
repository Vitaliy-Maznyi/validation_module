module Validation
  module Presence
    extend self

    def validate!(attribute:, value:, expectation: nil)
      return true if value.present?
      raise ::Validation::RecordInvalidError, "#{attribute} cannot be blank"
    end

    def validate(attribute:, value:, expectation: nil)
      return if value.present?
      ::Validations::Context.add_error(attribute, 'cannot be blank')
    end
  end
end
