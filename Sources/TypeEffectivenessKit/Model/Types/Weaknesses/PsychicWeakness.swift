//
//  Psychic.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

struct PsychicWeakness: TypeWeaknessable {
    
    static var `default`: TypeWeaknessable {
        return PsychicWeakness()
    }
    
    var type: PokemonType {
        return .psychic
    }
    
    var noDamageFrom: [PokemonType] {
        return []
    }
    
    var halfDamageFrom: [PokemonType] {
        return [.fighting, .psychic]
    }
    
    var normalDamageFrom: [PokemonType] {
        return [.normal, .flying, .poison, .ground, .rock, .steel, .fire, .water, .grass, .electric, .ice, .dragon, .fairy]
    }
    
    var doubleDamageFrom: [PokemonType] {
        return [.bug, .ghost, .dark]
    }
    
}
