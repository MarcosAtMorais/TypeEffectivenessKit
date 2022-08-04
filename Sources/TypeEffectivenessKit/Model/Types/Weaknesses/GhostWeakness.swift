//
//  Ghost.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

public struct GhostWeakness: TypeWeaknessable {
    
    static var `default`: TypeWeaknessable {
        return GhostWeakness()
    }
    
    var type: PokemonType {
        return .ghost
    }
    
    var noDamageFrom: [PokemonType] {
        return [.normal, .fighting]
    }
    
    var halfDamageFrom: [PokemonType] {
        return [.poison, .bug]
    }
    
    var normalDamageFrom: [PokemonType] {
        return [.flying, .ground, .rock, .steel, .fire, .water, .grass, .electric, .psychic, .ice, .dragon, .fairy]
    }
    
    var doubleDamageFrom: [PokemonType] {
        return [.ghost, .dark]
    }
    
}
