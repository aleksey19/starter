//
//  EmptyValidator.swift
//  ios-starter
//
//  Created by Aleksey Bidnyk on 31.03.2024.
//

import Foundation

class EmptyValidator: Validator {
    var errorDomain: String = "NoErrorValidator"
    
    func validate(_ value: String) -> Error? {
        return nil
    }
}
