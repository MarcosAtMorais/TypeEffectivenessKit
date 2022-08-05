//
//  File.swift
//  
//
//  Created by Marcos Morais on 28/07/22.
//

import Foundation

/**
This effectiveness is the complete one, that also checks for DualType effectiveness such as Barely Effective (1/4x the damage) and Ultra Effective (4x the damage).
 */
public enum Effectiveness: Int, RawRepresentable, CaseIterable {
    
    case notLocated
    case noEffect
    case barelyEffective
    case notVeryEffective
    case effective
    case superEffective
    case ultraEffective
    
    /// The Localized Title for each Pokemon Effectiveness.
    var localized: String {
        switch self {
        case .noEffect:
            return String(localized: "No Effect")
        case .effective:
            return String(localized: "Effective")
        case .barelyEffective:
            return String(localized: "Barely Effective (1/4)")
        case .notVeryEffective:
            return String(localized: "Not Very Effective")
        case .superEffective:
            return String(localized: "Super Effective")
        case .ultraEffective:
            return String(localized: "Ultra (4x) Effective")
        case .notLocated:
            return String(localized: "We could not process the type effectiveness")
        }
    }
    
}

/**
This effectiveness is the single type one, that checks for common single-type pokemon effectiveness.
 */
public enum SingleTypeEffectiveness: Int, RawRepresentable, CaseIterable {
    
    case notLocated
    case noEffect
    case notVeryEffective
    case effective
    case superEffective
    
    /// The Localized Title for each Pokemon Effectiveness.
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
