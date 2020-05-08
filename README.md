Validation module
-----
### Description
Validation module which was written using plain ruby.

Contains a class method `validate`. This method takes two arguments: attribute name and options with validation types and rules.

### Validation types:
- **presence** - requires an attribute to be neither nil nor an empty string.

  Example:
  `validate :first_name, presence: true`
- **absence** - requires an attribute to be either nil or an empty string.

  Example:
  `validate :first_name, absence: true`
- **format** - requires an attribute to match the passed regular expression.

  Example:
  `validate :email, format: /[^@]+@[^\.]+\..+/`
- **type** - requires an attribute to be an instance of the passed class.

  Example:
  `validate :owner, type: User`

### Validation methods

- **validate!** - runs all checks and validations and raises an exception with a message that says what exact validation failed.
- **validate** - runs all checks and validations and populate `errors` array with validation error messages
- **errors** - array which contains validation error messages after running `#validate` or `#valid?` instance methods
- **valid?** - instance method which returns `true` if all validations pass and `false` if there is any validation fail.

### Testing

run `ruby test_validations.rb` in the terminal to see output of validations usage

feel free to uncomment `binding.pry` in `test_validations.rb` file to play around with different validations

Output example:

