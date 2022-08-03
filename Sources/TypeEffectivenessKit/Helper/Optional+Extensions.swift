//
//  Optional+Extensions.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

extension Optional where Wrapped == String {
    var orEmpty: String {
        switch self {
        case .some(let value):
            return value
            
        case .none:
            return ""
        }
    }
}
