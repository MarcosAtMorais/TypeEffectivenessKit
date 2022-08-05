//
//  Dragon.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

public struct DragonWeakness: TypeWeaknessable {
    
    public static var `default`: TypeWeaknessable {
        return DragonWeakness()
    }
    
    public var type: PokemonType {
        return .dragon
    }
    
    public var noDamageFrom: [PokemonType] {
        return []
    }
    
    public var halfDamageFrom: [PokemonType] {
        return [.fire, .water, .grass, .electric]
    }
    
    public var normalDamageFrom: [PokemonType] {
        return [.normal, .fighting, .flying, .poison, .ground, .rock, .bug, .ghost, .steel, .psychic, .dark]
    }
    
    public var doubleDamageFrom: [PokemonType] {
        return [.ice, .dragon, .fairy]
    }
    
}
