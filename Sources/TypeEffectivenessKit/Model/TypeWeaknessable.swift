//
//  File.swift
//  
//
//  Created by Marcos Morais on 02/08/22.
//

import Foundation

protocol TypeWeaknessable {
    
    var type: PokemonType { get }
    
    var noDamageFrom: [PokemonType] { get }
    var halfDamageFrom: [PokemonType] { get }
    var normalDamageFrom: [PokemonType] { get }
    var doubleDamageFrom: [PokemonType] { get }
    
    func checkEffectiveness(offensiveType: PokemonType) -> SingleTypeEffectiveness
    func checkDualTypeEffectiveness(otherType: TypeWeaknessable, offensiveType: PokemonType) -> Effectiveness
    
}
