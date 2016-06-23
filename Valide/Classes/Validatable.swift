//
//  Validatable.swift
//  Valide
//
//  Created by Sidney De Koning on 18-08-15.
//  Copyright (c) 2015 Sidney De Koning. All rights reserved.
//

import Foundation

// Is used for fields that can be validated
protocol Validatable {
    
    /*
    Stap 3: Gebruik maken van observables => Observer
    Stap 4: Alle fields validaten => validateAllFields?
    Stap 5: Groepen van fields maken - groeps validatie
    Stap 6: Error messages
    Stap 7: Default messages (structs/init???)
    */

    func isValid() -> (isValid:Bool, validationName: String, error: String?)
    func addRule(rule: Enforceable) -> Void
    func validate(completion: () -> (), error: (validationName: String, error: String) -> ())
}
