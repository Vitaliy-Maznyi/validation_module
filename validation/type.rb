module Validation
  module Type
    def self.validate(attribute:, value:, expectation:)
      return true if value.class == expectation
      raise ::Validation::RecordInvalidError, "#{attribute} type is not valid. Expected #{expectation}"
    end
  end
end
