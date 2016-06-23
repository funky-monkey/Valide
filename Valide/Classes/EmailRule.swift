//
//  EmailRule.swift
//  Valide
//
//  Created by Sidney De Koning on 18-08-15.
//  Copyright (c) 2015 Sidney De Koning. All rights reserved.
//

import Foundation

public class EmailRule: Enforceable {

	init() {}

    public var error: String = "Field must contain at least a @ and a ."
    
    public func enforce(input: String) -> Bool {
        return input.characters.contains("@") && input.characters.contains(".")
    }
}
