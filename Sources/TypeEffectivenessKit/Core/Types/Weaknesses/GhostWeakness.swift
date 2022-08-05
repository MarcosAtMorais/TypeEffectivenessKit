//
//  Ghost.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

public struct GhostWeakness: TypeWeaknessable {
    
    public static var `default`: TypeWeaknessable {
        return GhostWeakness()
    }
    
    public var type: PokemonType {
        return .ghost
    }
    
    public var noDamageFrom: [PokemonType] {
        return [.normal, .fighting]
    }
    
    public var halfDamageFrom: [PokemonType] {
        return [.poison, .bug]
    }
    
    public var normalDamageFrom: [PokemonType] {
        return [.flying, .ground, .rock, .steel, .fire, .water, .grass, .electric, .psychic, .ice, .dragon, .fairy]
    }
    
    public var doubleDamageFrom: [PokemonType] {
        return [.ghost, .dark]
    }
    
}
