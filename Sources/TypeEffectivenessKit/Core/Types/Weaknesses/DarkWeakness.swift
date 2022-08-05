//
//  Dark.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

public struct DarkWeakness: TypeWeaknessable {
    
    public static var `default`: TypeWeaknessable {
        return DarkWeakness()
    }
    
    public var type: PokemonType {
        return .dark
    }
    
    public var noDamageFrom: [PokemonType] {
        return [.psychic]
    }
    
    public var halfDamageFrom: [PokemonType] {
        return [.ghost, .dark]
    }
    
    public var normalDamageFrom: [PokemonType] {
        return [.normal, .flying, .poison, .ground, .rock, .steel, .fire, .water, .grass, .electric, .ice, .dragon]
    }
    
    public var doubleDamageFrom: [PokemonType] {
        return [.fighting, .bug, .fairy]
    }
    
}
