//
//  File.swift
//  
//
//  Created by Marcos Morais on 28/07/22.
//

import Foundation

enum Effectiveness: Int, RawRepresentable, CaseIterable {
    
    case notLocated
    case noEffect
    case notVeryEffective
    case effective
    case superEffective
    
    var localized: String {
        switch self {
        case .noEffect:
            return String(localized: "No Effect")
        case .effective:
            return String(localized: "Effective")
        case .notVeryEffective:
            return String(localized: "Not Very Effective")
        case .superEffective:
            return String(localized: "Super Effective")
        case .notLocated:
            return String(localized: "We could not process the type effectiveness")
        }
    }
    
}