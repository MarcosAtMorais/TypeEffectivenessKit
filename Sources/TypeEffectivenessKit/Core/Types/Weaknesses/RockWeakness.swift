//
//  Rock.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

public struct RockWeakness: TypeWeaknessable {
    
    public static var `default`: TypeWeaknessable {
        return RockWeakness()
    }
    
    public var type: PokemonType {
        return .rock
    }
    
    public var noDamageFrom: [PokemonType] {
        return []
    }
    
    public var halfDamageFrom: [PokemonType] {
        return [.normal, .flying, .poison, .fire]
    }
    
    public var normalDamageFrom: [PokemonType] {
        return [.rock, .bug, .ghost, .electric, .psychic, .ice, .dragon, .dark, .fairy]
    }
    
    public var doubleDamageFrom: [PokemonType] {
        return [.fighting, .ground, .steel, .water, .grass]
    }
    
}
