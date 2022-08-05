//
//  Normal.swift
//  
//
//  Created by Marcos Morais on 02/08/22.
//

import Foundation

public struct NormalWeakness: TypeWeaknessable {
    
    public static var `default`: TypeWeaknessable {
        return NormalWeakness()
    }
    
    public var type: PokemonType {
        return .normal
    }
    
    public var noDamageFrom: [PokemonType] {
        return [.ghost]
    }
    
    public var halfDamageFrom: [PokemonType] {
        return []
    }
    
    public var normalDamageFrom: [PokemonType] {
        return [.normal, .flying, .poison, .ground, .rock, .bug, .steel, .fire, .water, .grass, .electric, .psychic, .ice, .dragon, .dark, .fairy]
    }
    
    public var doubleDamageFrom: [PokemonType] {
        return [.fighting]
    }
    
}
