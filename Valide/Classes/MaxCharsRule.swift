//
//  MaxCharsRule.swift
//  Valide
//
//  Created by Sidney De Koning on 18-08-15.
//  Copyright (c) 2015 Sidney De Koning. All rights reserved.
//

import Foundation

class MaxCharsRule: Enforceable {

    var error: String = "Field can only have a maximum of 25 characters"
    var maxChars: Int?

    func enforce(input: String) -> Bool {
        return input.characters.count <= self.maxChars
    }
}
