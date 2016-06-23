//
//  Enforceable.swift
//  Valide
//
//  Created by Sidney De Koning on 18-08-15.
//  Copyright (c) 2015 Sidney De Koning. All rights reserved.
//

import Foundation

// Enforces rule - executes the actual SomethingRule on the field
public protocol Enforceable {
	
	init()
    var error: String { get }
    func enforce(input:String) -> Bool
}
