module Validation
  class RecordInvalidError < StandardError
    def initialize(msg='record invalid')
      super("Validations failed: #{msg}")
    end
  end
end
