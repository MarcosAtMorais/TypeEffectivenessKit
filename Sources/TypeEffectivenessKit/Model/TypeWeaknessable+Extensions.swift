//
//  TypeWeaknessable+Extensions.swift
//  
//
//  Created by Marcos Morais on 02/08/22.
//

import Foundation

extension TypeWeaknessable {
    
    func checkEffectiveness(offensiveType: PokemonType) -> SingleTypeEffectiveness {
                
        if !noDamageFrom.filter({ $0 == offensiveType }).isEmpty { return .noEffect }
        if !halfDamageFrom.filter({ $0 == offensiveType }).isEmpty { return .notVeryEffective }
        if !normalDamageFrom.filter({ $0 == offensiveType }).isEmpty { return .effective }
        if !doubleDamageFrom.filter({ $0 == offensiveType }).isEmpty { return .superEffective }
            
        return .notLocated
        
    }
    
    func checkDualTypeEffectiveness(otherType: TypeWeaknessable, offensiveType: PokemonType) -> Effectiveness {
        
        let firstTypeEffectiveness = checkEffectiveness(offensiveType: offensiveType)
        let secondTypeEffectiveness = otherType.checkEffectiveness(offensiveType: offensiveType)
        
        switch firstTypeEffectiveness {
        case .notLocated:
            return .notLocated
        case .noEffect:
            switch secondTypeEffectiveness {
            case .notLocated:
                return .notLocated
            case .noEffect:
                return .noEffect
            case .notVeryEffective:
                return .noEffect
            case .effective:
                return .noEffect
            case .superEffective:
                return .noEffect
            }
        case .notVeryEffective:
            switch secondTypeEffectiveness {
            case .notLocated:
                return .notLocated
            case .noEffect:
                return .noEffect
            case .notVeryEffective:
                return .barelyEffective
            case .effective:
                return .notVeryEffective
            case .superEffective:
                return .effective
            }
        case .effective:
            switch secondTypeEffectiveness {
            case .notLocated:
                return .notLocated
            case .noEffect:
                return .noEffect
            case .notVeryEffective:
                return .notVeryEffective
            case .effective:
                return .effective
            case .superEffective:
                return .superEffective
            }
        case .superEffective:
            switch secondTypeEffectiveness {
            case .notLocated:
                return .notLocated
            case .noEffect:
                return .noEffect
            case .notVeryEffective:
                return .effective
            case .effective:
                return .superEffective
            case .superEffective:
                return .ultraEffective
            }
        }
        
    }

}
