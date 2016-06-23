//
//  RequiredRule.swift
//  Valide
//
//  Created by Sidney De Koning on 18-08-15.
//  Copyright (c) 2015 Sidney De Koning. All rights reserved.
//

import Foundation

public class RequiredRule: Enforceable {

    public var error: String = "Field is required"
    
    public func enforce(input: String) -> Bool {
        return !input.isEmpty
    }
}
