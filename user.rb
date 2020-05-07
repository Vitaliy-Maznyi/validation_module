require 'pry'
require './validations'

class User
  include Validations

  attr_accessor :first_name, :last_name, :email, :password

  def initialize(first_name: nil, last_name: nil, email: nil, password: nil)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @password = password
  end

  validate :first_name, presence: true
  validate :last_name, presence: true
  validate :email, format: /[^@]+@[^\.]+\..+/
  validate :password, type: String
end
