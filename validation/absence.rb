module Validation
  module Absence
    def self.validate(attribute:, value:, _expectation: nil)
      return true if value.blank?
      raise ::Validation::RecordInvalidError, "#{attribute} must be blank"
    end
  end
end
