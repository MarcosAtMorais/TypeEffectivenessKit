//
//  Water.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

public struct WaterWeakness: TypeWeaknessable {
    
    public static var `default`: TypeWeaknessable {
        return WaterWeakness()
    }
    
    public var type: PokemonType {
        return .water
    }
    
    public var noDamageFrom: [PokemonType] {
        return []
    }
    
    public var halfDamageFrom: [PokemonType] {
        return [.steel, .fire, .water, .ice]
    }
    
    public var normalDamageFrom: [PokemonType] {
        return [.normal, .fighting, .flying, .poison, .ground, .rock, .bug, .ghost, .psychic, .dragon, .dark, .fairy]
    }
    
    public var doubleDamageFrom: [PokemonType] {
        return [.grass, .electric]
    }
    
}
