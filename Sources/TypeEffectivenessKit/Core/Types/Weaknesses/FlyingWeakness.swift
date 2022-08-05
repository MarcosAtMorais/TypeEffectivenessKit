//
//  Flying.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

public struct FlyingWeakness: TypeWeaknessable {
    
    public static var `default`: TypeWeaknessable {
        return FlyingWeakness()
    }
    
    public var type: PokemonType {
        return .flying
    }
    
    public var noDamageFrom: [PokemonType] {
        return [.ground]
    }
    
    public var halfDamageFrom: [PokemonType] {
        return [.fighting, .bug, .grass]
    }
    
    public var normalDamageFrom: [PokemonType] {
        return [.normal, .flying, .poison, .ghost, .steel, .fire, .water, .psychic, .dragon, .dark, .fairy]
    }
    
    public var doubleDamageFrom: [PokemonType] {
        return [.rock, .electric, .ice]
    }
    
}
