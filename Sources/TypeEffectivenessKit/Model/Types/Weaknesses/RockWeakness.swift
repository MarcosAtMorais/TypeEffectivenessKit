//
//  Rock.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

public struct RockWeakness: TypeWeaknessable {
    
    static var `default`: TypeWeaknessable {
        return RockWeakness()
    }
    
    var type: PokemonType {
        return .rock
    }
    
    var noDamageFrom: [PokemonType] {
        return []
    }
    
    var halfDamageFrom: [PokemonType] {
        return [.normal, .flying, .poison, .fire]
    }
    
    var normalDamageFrom: [PokemonType] {
        return [.rock, .bug, .ghost, .electric, .psychic, .ice, .dragon, .dark, .fairy]
    }
    
    var doubleDamageFrom: [PokemonType] {
        return [.fighting, .ground, .steel, .water, .grass]
    }
    
}
