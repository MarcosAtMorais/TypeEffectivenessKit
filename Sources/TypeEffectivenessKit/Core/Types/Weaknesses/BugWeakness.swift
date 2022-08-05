//
//  Bug.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

public struct BugWeakness: TypeWeaknessable {
    
    public static var `default`: TypeWeaknessable {
        return BugWeakness()
    }
    
    public var type: PokemonType {
        return .bug
    }
    
    public var noDamageFrom: [PokemonType] {
        return []
    }
    
    public var halfDamageFrom: [PokemonType] {
        return [.fighting, .ground, .grass]
    }
    
    public var normalDamageFrom: [PokemonType] {
        return [.normal, .poison, .bug, .ghost, .steel, .water, .electric, .psychic, .ice, .dragon, .dark, .fairy]
    }
    
    public var doubleDamageFrom: [PokemonType] {
        return [.flying, .rock, .fire]
    }
    
}
