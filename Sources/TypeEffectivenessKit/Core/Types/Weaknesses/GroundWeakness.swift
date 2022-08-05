//
//  Ground.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

public struct GroundWeakness: TypeWeaknessable {
    
    public static var `default`: TypeWeaknessable {
        return GroundWeakness()
    }
    
    public var type: PokemonType {
        return .ground
    }
    
    public var noDamageFrom: [PokemonType] {
        return [.electric]
    }
    
    public var halfDamageFrom: [PokemonType] {
        return [.rock, .poison]
    }
    
    public var normalDamageFrom: [PokemonType] {
        return [.normal, .fighting, .flying, .ground, .bug, .ghost, .steel, .fire, .psychic, .dark, .fairy, .dragon]
    }
    
    public var doubleDamageFrom: [PokemonType] {
        return [.water, .grass, .ice]
    }
    
}
