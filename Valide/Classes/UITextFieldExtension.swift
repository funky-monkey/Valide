//
//  UITextFieldExtension.swift
//  Valide
//
//  Created by Sidney De Koning on 18-08-15.
//  Copyright (c) 2015 Sidney De Koning. All rights reserved.
//

import UIKit

extension UITextField: Validatable {

    var validationName: String {
        get {
            assert(self.accessibilityIdentifier != nil, "Please provide a validationName")
            guard let accessibilityIdentifier = self.accessibilityIdentifier else { return String() }
            return accessibilityIdentifier
            
        }
        set {
            self.accessibilityIdentifier = newValue
        }
    }
    
    func isValid() -> (isValid:Bool, validationName: String, error: String?) {

        var isValid: Bool = false

        if Valide.sharedInstance.rules.has(self) {
            
            guard let rules: [Enforceable] = Valide.sharedInstance.rules[self] else { return (false, self.validationName, nil) }

            // Some fields could have more rules
            for rule in rules {

                isValid = rule.enforce(self.text!)

                if !isValid {
                    return (isValid, self.validationName, rule.error)
                }
            }

        }
        return (isValid, self.validationName, nil)
    }
    
    func addRule(rule: Enforceable) -> Void {
        Valide.sharedInstance.addValidationRule(self, rule: rule)
    }
    
    func validate(completion: () -> (), error: (validationName: String, error: String) -> ()) {
        let validationResult = self.isValid()

        if validationResult.isValid {
            completion()
        } else {
            // We know this is the only place we can have an error - hence the !
            error(validationName: validationResult.validationName, error: validationResult.error!)
        }
    }
    
    func error() -> Void {
        // return the error from a UITextField?
    }
}
