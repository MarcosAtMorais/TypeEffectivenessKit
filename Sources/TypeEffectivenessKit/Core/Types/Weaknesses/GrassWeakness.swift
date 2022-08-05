//
//  Grass.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

public struct GrassWeakness: TypeWeaknessable {
    
    public static var `default`: TypeWeaknessable {
        return GrassWeakness()
    }
    
    public var type: PokemonType {
        return .grass
    }
    
    public var noDamageFrom: [PokemonType] {
        return []
    }
    
    public var halfDamageFrom: [PokemonType] {
        return [.ground, .water, .grass, .electric]
    }
    
    public var normalDamageFrom: [PokemonType] {
        return [.normal, .fighting, .rock, .ghost, .steel, .psychic, .dragon, .dark, .fairy]
    }
    
    public var doubleDamageFrom: [PokemonType] {
        return [.flying, .poison, .bug, .fire, .ice]
    }
    
}
