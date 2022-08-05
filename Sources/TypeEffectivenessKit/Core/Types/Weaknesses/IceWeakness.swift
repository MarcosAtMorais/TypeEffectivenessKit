//
//  Ice.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

public struct IceWeakness: TypeWeaknessable {
    
    public static var `default`: TypeWeaknessable {
        return IceWeakness()
    }
    
    public var type: PokemonType {
        return .ice
    }
    
    public var noDamageFrom: [PokemonType] {
        return []
    }
    
    public var halfDamageFrom: [PokemonType] {
        return [.ice]
    }
    
    public var normalDamageFrom: [PokemonType] {
        return [.normal, .flying, .poison, .ground, .bug, .ghost, .water, .grass, .electric, .psychic, .dragon, .dark, .fairy]
    }
    
    public var doubleDamageFrom: [PokemonType] {
        return [.fighting, .rock, .steel, .fire]
    }
    
}
