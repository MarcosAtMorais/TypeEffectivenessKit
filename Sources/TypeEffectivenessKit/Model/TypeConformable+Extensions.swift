//
//  File.swift
//  
//
//  Created by Marcos Morais on 29/07/22.
//

import Foundation

/**
 Extension that provides a default implementation of checkDamage for TypeConformable.
 */
extension TypeConformable {
    
    func checkDamage(offensiveType: PokemonType) -> Effectiveness {
        
        if !noDamageFrom.filter({ $0 == offensiveType }).isEmpty { return .noEffect }
        if !oneFourthDamageFrom.filter({ $0 == offensiveType }).isEmpty { return .barelyEffective }
        if !halfDamageFrom.filter({ $0 == offensiveType }).isEmpty { return .notVeryEffective }
        if !normalDamageFrom.filter({ $0 == offensiveType }).isEmpty { return .effective }
        if !doubleDamageFrom.filter({ $0 == offensiveType }).isEmpty { return .superEffective }
        if !quadrupleDamageFrom.filter({ $0 == offensiveType }).isEmpty { return .ultraEffective }
        
        return .notLocated

    }
    
}
