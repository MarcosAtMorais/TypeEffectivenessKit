//
//  File.swift
//  
//
//  Created by Marcos Morais on 29/07/22.
//

import Foundation

extension TypeConformable {
    
    func checkDamage(type: PokemonType) -> Effectiveness {
        
        if !noDamageFrom.filter({ $0 == type }).isEmpty { return .noEffect }
        if !oneFourthDamageFrom.filter({ $0 == type }).isEmpty { return .barelyEffective }
        if !halfDamageFrom.filter({ $0 == type }).isEmpty { return .notVeryEffective }
        if !normalDamageFrom.filter({ $0 == type }).isEmpty { return .effective }
        if !doubleDamageFrom.filter({ $0 == type }).isEmpty { return .superEffective }
        if !quadrupleDamageFrom.filter({ $0 == type }).isEmpty { return .ultraEffective }
        
        return .notLocated

    }
    
}
