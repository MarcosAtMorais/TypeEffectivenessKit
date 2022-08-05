//
//  Poison.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

public struct PoisonWeakness: TypeWeaknessable {
    
    static var `default`: TypeWeaknessable {
        return PoisonWeakness()
    }
    
    var type: PokemonType {
        return .poison
    }
    
    var noDamageFrom: [PokemonType] {
        return []
    }
    
    var halfDamageFrom: [PokemonType] {
        return [.fighting, .poison, .bug, .grass, .fairy]
    }
    
    var normalDamageFrom: [PokemonType] {
        return [.normal, .flying, .rock, .ghost, .steel, .fire, .water, .electric, .ice, .dragon, .dark]
    }
    
    var doubleDamageFrom: [PokemonType] {
        return [.ground, .psychic]
    }
    
}
