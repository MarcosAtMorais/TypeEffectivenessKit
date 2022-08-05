//
//  Electric.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

public struct ElectricWeakness: TypeWeaknessable {
    
    public static var `default`: TypeWeaknessable {
        return ElectricWeakness()
    }
    
    public var type: PokemonType {
        return .electric
    }
    
    public var noDamageFrom: [PokemonType] {
        return []
    }
    
    public var halfDamageFrom: [PokemonType] {
        return [.flying, .steel, .electric]
    }
    
    public var normalDamageFrom: [PokemonType] {
        return [.normal, .fighting, .poison, .rock, .bug, .ghost, .fire, .water, .grass, .psychic, .ice, .dragon, .dark, .fairy]
    }
    
    public var doubleDamageFrom: [PokemonType] {
        return [.ground]
    }
    
}
