//
//  Steel.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

public struct SteelWeakness: TypeWeaknessable {
    
    public static var `default`: TypeWeaknessable {
        return SteelWeakness()
    }
    
    public var type: PokemonType {
        return .steel
    }
    
    public var noDamageFrom: [PokemonType] {
        return [.poison]
    }
    
    public var halfDamageFrom: [PokemonType] {
        return [.normal, .flying, .rock, .bug, .steel, .grass, .psychic, .ice, .dragon, .fairy]
    }
    
    public var normalDamageFrom: [PokemonType] {
        return [.ghost, .water, .electric, .dark]
    }
    
    public var doubleDamageFrom: [PokemonType] {
        return [.fighting, .ground, .fire]
    }
    
}
