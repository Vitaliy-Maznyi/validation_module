require './support/blank'
require './validation/record_invalid_error'
require './validation/absence'
require './validation/presence'
require './validation/format'
require './validation/type'
require './validations/context'
require './validations/class_methods'

module Validations
  def self.included(klass)
    klass.extend(::Validations::ClassMethods)
  end

  def valid?
    true
  end

  def validate!
    ::Validations::Context.validators.each do |validator|
      validator[:module].validate(
        attribute: validator[:attribute].to_s,
        value: instance_variable_get("@#{validator[:attribute]}"),
        expectation: validator[:expectation]
      )
    end
  end
end
