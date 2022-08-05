//
//  Water.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

public struct WaterWeakness: TypeWeaknessable {
    
    static var `default`: TypeWeaknessable {
        return WaterWeakness()
    }
    
    var type: PokemonType {
        return .water
    }
    
    var noDamageFrom: [PokemonType] {
        return []
    }
    
    var halfDamageFrom: [PokemonType] {
        return [.steel, .fire, .water, .ice]
    }
    
    var normalDamageFrom: [PokemonType] {
        return [.normal, .fighting, .flying, .poison, .ground, .rock, .bug, .ghost, .psychic, .dragon, .dark, .fairy]
    }
    
    var doubleDamageFrom: [PokemonType] {
        return [.grass, .electric]
    }
    
}
