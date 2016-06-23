//
//  Valide.swift
//  Valide
//
//  Created by Sidney De Koning on 18-08-15.
//  Copyright (c) 2015 Sidney De Koning. All rights reserved.
//

import Foundation
import UIKit

/*
This class only functions as storage
*/
public class Valide {
    
    public static let sharedInstance = Valide()
    
    private(set) lazy var rules: [UITextField:[Enforceable]]  = [:]

    public func addValidationRule(field: UITextField, rule: Enforceable) -> Void {

        var enforceables:[Enforceable] = []

        if let oldRules = self.rules[field] {
            enforceables = oldRules
        }

        enforceables.append(rule)

        self.rules[field] = enforceables
    }    
}
