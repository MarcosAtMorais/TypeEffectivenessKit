//
//  Optional+Extensions.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

extension Optional where Wrapped == String {
    /// Property that verifies if the String is nil and, if so, strongly types it with the value "".
    var orEmpty: String {
        switch self {
        case .some(let value):
            return value
        case .none:
            return ""
        }
    }
}
