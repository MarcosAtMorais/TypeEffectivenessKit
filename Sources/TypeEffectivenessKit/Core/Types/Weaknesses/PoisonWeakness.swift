//
//  Poison.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

public struct PoisonWeakness: TypeWeaknessable {
    
    public static var `default`: TypeWeaknessable {
        return PoisonWeakness()
    }
    
    public var type: PokemonType {
        return .poison
    }
    
    public var noDamageFrom: [PokemonType] {
        return []
    }
    
    public var halfDamageFrom: [PokemonType] {
        return [.fighting, .poison, .bug, .grass, .fairy]
    }
    
    public var normalDamageFrom: [PokemonType] {
        return [.normal, .flying, .rock, .ghost, .steel, .fire, .water, .electric, .ice, .dragon, .dark]
    }
    
    public var doubleDamageFrom: [PokemonType] {
        return [.ground, .psychic]
    }
    
}
