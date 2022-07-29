//
//  File.swift
//  
//
//  Created by Marcos Morais on 28/07/22.
//

import Foundation

protocol TypeConformable {
    
    var noDamageFrom: [PokemonType] { get }
    var halfDamageFrom: [PokemonType] { get }
    var normalDamageFrom: [PokemonType] { get }
    var doubleDamageFrom: [PokemonType] { get }
    
    func checkDamage(type: PokemonType) -> Effectiveness

}

extension TypeConformable {
    
    func checkDamage(type: PokemonType) -> Effectiveness {
        
        if !noDamageFrom.filter({ $0 == type }).isEmpty { return .noEffect }
        if !halfDamageFrom.filter({ $0 == type }).isEmpty { return .notVeryEffective }
        if !normalDamageFrom.filter({ $0 == type }).isEmpty { return .effective }
        if !doubleDamageFrom.filter({ $0 == type }).isEmpty { return .superEffective }
        
        return .notLocated

    }
    
}
