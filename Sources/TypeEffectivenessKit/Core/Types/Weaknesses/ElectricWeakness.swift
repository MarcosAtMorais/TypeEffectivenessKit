//
//  Electric.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

public struct ElectricWeakness: TypeWeaknessable {
    
    static var `default`: TypeWeaknessable {
        return ElectricWeakness()
    }
    
    var type: PokemonType {
        return .electric
    }
    
    var noDamageFrom: [PokemonType] {
        return []
    }
    
    var halfDamageFrom: [PokemonType] {
        return [.flying, .steel, .electric]
    }
    
    var normalDamageFrom: [PokemonType] {
        return [.normal, .fighting, .poison, .rock, .bug, .ghost, .fire, .water, .grass, .psychic, .ice, .dragon, .dark, .fairy]
    }
    
    var doubleDamageFrom: [PokemonType] {
        return [.ground]
    }
    
}
