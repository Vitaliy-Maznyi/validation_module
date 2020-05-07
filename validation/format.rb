module Validation
  module Format
    def self.validate(attribute:, value:, expectation:)
      return true if value.match?(expectation)
      raise ::Validation::RecordInvalidError, "#{attribute} format is invalid"
    end
  end
end
