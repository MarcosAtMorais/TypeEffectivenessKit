//
//  Psychic.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

public struct PsychicWeakness: TypeWeaknessable {
    
    public static var `default`: TypeWeaknessable {
        return PsychicWeakness()
    }
    
    public var type: PokemonType {
        return .psychic
    }
    
    public var noDamageFrom: [PokemonType] {
        return []
    }
    
    public var halfDamageFrom: [PokemonType] {
        return [.fighting, .psychic]
    }
    
    public var normalDamageFrom: [PokemonType] {
        return [.normal, .flying, .poison, .ground, .rock, .steel, .fire, .water, .grass, .electric, .ice, .dragon, .fairy]
    }
    
    public var doubleDamageFrom: [PokemonType] {
        return [.bug, .ghost, .dark]
    }
    
}
