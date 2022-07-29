//
//  File.swift
//  
//
//  Created by Marcos Morais on 28/07/22.
//

import Foundation

protocol TypeConformable {
    
    var noDamageFrom: [PokemonType] { get }
    var oneFourthDamageFrom: [PokemonType] { get }
    var halfDamageFrom: [PokemonType] { get }
    var normalDamageFrom: [PokemonType] { get }
    var doubleDamageFrom: [PokemonType] { get }
    var quadrupleDamageFrom: [PokemonType] { get }
    
    func checkDamage(type: PokemonType) -> Effectiveness

}
