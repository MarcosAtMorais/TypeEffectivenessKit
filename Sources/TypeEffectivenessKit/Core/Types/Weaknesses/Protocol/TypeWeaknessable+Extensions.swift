//
//  TypeWeaknessable+Extensions.swift
//  
//
//  Created by Marcos Morais on 02/08/22.
//

import Foundation

/**
 Extension that provides a default implementation of checkEffectiveness for TypeWeaknessable.
 */
extension TypeWeaknessable {
    
    public func checkEffectiveness(offensiveType: PokemonType) -> SingleTypeEffectiveness {
                
        if !noDamageFrom.filter({ $0 == offensiveType }).isEmpty { return .noEffect }
        if !halfDamageFrom.filter({ $0 == offensiveType }).isEmpty { return .notVeryEffective }
        if !normalDamageFrom.filter({ $0 == offensiveType }).isEmpty { return .effective }
        if !doubleDamageFrom.filter({ $0 == offensiveType }).isEmpty { return .superEffective }
            
        return .notLocated
        
    }

}
