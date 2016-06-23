# Valide

[![CI Status](http://img.shields.io/travis/Sidney de Koning/Valide.svg?style=flat)](https://travis-ci.org/Sidney de Koning/Valide)
[![Version](https://img.shields.io/cocoapods/v/Valide.svg?style=flat)](http://cocoapods.org/pods/Valide)
[![License](https://img.shields.io/cocoapods/l/Valide.svg?style=flat)](http://cocoapods.org/pods/Valide)
[![Platform](https://img.shields.io/cocoapods/p/Valide.svg?style=flat)](http://cocoapods.org/pods/Valide)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

From your ViewController set up everything first. Start with the validation names for the fields.

	struct ValidationNames {
	    static let nameField: String = "nameField"
	    static let emailField: String = "emailField"
	    static let nonEmptyField: String = "nonEmptyField"
	}

Set up the rules you need. (You can create your own rules as well). Fields can have multiple rules to adhere to.

        let requiredRule = RequiredRule()
        let emailRule = EmailRule()
        let emptyFieldRule = NonEmptyFieldRule()
        
        let minCharsRule = MinCharsRule()
        minCharsRule.minChars = 3
        
        let maxCharsRule = MaxCharsRule()
        maxCharsRule.maxChars = 50

Set validation name to field and add rules:

        self.name.validationName = ValidationNames.nameField
        self.name.addRule(requiredRule)
        self.name.addRule(minCharsRule)
        self.name.addRule(maxCharsRule)

        self.emailField.validationName = ValidationNames.emailField
        self.emailField.addRule(requiredRule)
        self.emailField.addRule(emailRule)

        self.nonEmptyField.validationName = ValidationNames.nonEmptyField
        self.nonEmptyField.addRule(emptyFieldRule)
        self.nonEmptyField.addRule(requiredRule)
    
When handling validation, usually by pressing a button, call the `validate()` method. This returns a closure with a success and error.  
  
Upon receiving an error, the name of the field is returned as well as the error defined in the *Rule file. These can also be customised to your liking

        self.name.validate({
                print("namefield validates")
            }, error: { (validationName, error) -> () in
                print("\(validationName) handle: \(error)")
        })
        
        self.emailField.validate({
                print("emailField validates")
            }, error: { (validationName, error) -> () in
                print("\(validationName) handle: \(error)")
        })
        
        self.nonEmptyField.validate({
                print("nonEmptyField validates")
            }, error: { (validationName, error) -> () in
                print("\(validationName) handle: \(error)")
        })

You can then check the `.isValid()` on the field you are validating. This returns a tuple with three properties. 

`func isValid() -> (isValid:Bool, validationName: String, error: String?)`


## Installation

Valide is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "Valide"
```

## Author

Sidney de Koning, sidney.dekoning@gmail.com

## License

Valide is available under the MIT license. See the LICENSE file for more info.
