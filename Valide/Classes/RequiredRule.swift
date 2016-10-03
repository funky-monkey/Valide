//
//  RequiredRule.swift
//  Valide
//
//  Created by Sidney De Koning on 18-08-15.
//  Copyright (c) 2015 Sidney De Koning. All rights reserved.
//

import Foundation

class RequiredRule: Enforceable {

    var error: String = "Field is required"
    
    func enforce(_ input: String) -> Bool {
        return !input.isEmpty
    }
}
