module Validation
  module Presence
    def self.validate(attribute:, value:, expectation: nil)
      return true if value.present?
      raise ::Validation::RecordInvalidError, "#{attribute} cannot be blank"
    end
  end
end
