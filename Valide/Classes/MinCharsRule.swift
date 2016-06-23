//
//  MinCharsRule.swift
//  Valide
//
//  Created by Sidney De Koning on 18-08-15.
//  Copyright (c) 2015 Sidney De Koning. All rights reserved.
//

import Foundation

class MinCharsRule: Enforceable {

    var error: String = "Field does not enforce minumum chars"
    var minChars: Int?
    
    func enforce(input: String) -> Bool {
        return input.characters.count >= minChars
    }
}
