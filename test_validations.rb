require 'pry'
require './user'

valid_user = User.new(
  first_name: 'John',
  last_name: 'Doe',
  email: 'john_doe@example.com',
  password: '123456',
)

p '='*20
p 'Valid user:'
valid_user.validate!
p "#valid? : #{valid_user.valid?}"
p "#errors : #{valid_user.errors}"

p '='*20
p 'invalid user validation errors:'
invalid_user = User.new(
  first_name: nil,
  last_name: '',
  email: 'john_doe@example',
  password: true,
)

p "#valid? : #{invalid_user.valid?}"
p "#errors : #{invalid_user.errors}"

#binding.pry # uncomment for testing manually in terminal
p '='*20
p 'invalid user with the errors raising:'
invalid_user = User.new(
  first_name: nil,
  last_name: '',
  email: 'john_doe@example',
  password: true,
)

invalid_user.validate!
p '='*20
