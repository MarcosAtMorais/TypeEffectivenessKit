//
//  Fighting.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

public struct FightingWeakness: TypeWeaknessable {
    
    public static var `default`: TypeWeaknessable {
        return FightingWeakness()
    }
    
    public var type: PokemonType {
        return .fighting
    }
    
    public var noDamageFrom: [PokemonType] {
        return []
    }
    
    public var halfDamageFrom: [PokemonType] {
        return [.rock, .bug, .dark]
    }
    
    public var normalDamageFrom: [PokemonType] {
        return [.normal, .fighting, .poison, .ground, .ghost, .steel, .fire, .water, .grass, .electric, .ice, .dragon]
    }
    
    public var doubleDamageFrom: [PokemonType] {
        return [.flying, .psychic, .fairy]
    }
    
}
