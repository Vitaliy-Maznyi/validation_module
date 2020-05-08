Validation module
-----
### Description
Validation module which was written using plain ruby.

Contains a class method `validate`. This method takes two arguments: attribute name and options with validation types and rules.

### Prerequisites
Before you started, make sure that you have installed and set-up properly:
- ruby 2.6.3

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
- **errors** - instance method which returns array of validation error messages after running `#valid?` instance method
- **valid?** - instance method which runs all checks and validations and populate `errors` array with validation error messages. It returns `true` if all validations pass and `false` if there is any validation fail.

### Testing

run `ruby test_validations.rb` in the terminal to see output of validations usage

feel free to uncomment `binding.pry` in `test_validations.rb` file to play around with different validations

**Output example:**
```
-> ruby test_validations.rb

"===================="
"Valid user:"
"#valid? : true"
"#errors : []"
"===================="
"invalid user validation errors:"
"#valid? : false"
"#errors : [{\"first_name\"=>\"cannot be blank\"}, {\"last_name\"=>\"cannot be blank\"}, {\"email\"=>\"format is invalid\"}, {\"password\"=>\"type is not valid\"}]"
"===================="
"invalid user with the errors raising:"
Traceback (most recent call last):
	4: from test_validations.rb:39:in `<main>'
	3: from ~/validation_module/validations.rb:16:in `validate!'
	2: from ~/validation_module/validations.rb:16:in `each'
	1: from ~/validation_module/validations.rb:17:in `block in validate!'
~/validation_module/validation/presence.rb:7:in `validate!': Validations failed: first_name cannot be blank (Validation::RecordInvalidError)
```
