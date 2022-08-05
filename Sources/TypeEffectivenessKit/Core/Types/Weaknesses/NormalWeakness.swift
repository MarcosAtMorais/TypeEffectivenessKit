//
//  Normal.swift
//  
//
//  Created by Marcos Morais on 02/08/22.
//

import Foundation

public struct NormalWeakness: TypeWeaknessable {
    
    static var `default`: TypeWeaknessable {
        return NormalWeakness()
    }
    
    var type: PokemonType {
        return .normal
    }
    
    var noDamageFrom: [PokemonType] {
        return [.ghost]
    }
    
    var halfDamageFrom: [PokemonType] {
        return []
    }
    
    var normalDamageFrom: [PokemonType] {
        return [.normal, .flying, .poison, .ground, .rock, .bug, .steel, .fire, .water, .grass, .electric, .psychic, .ice, .dragon, .dark, .fairy]
    }
    
    var doubleDamageFrom: [PokemonType] {
        return [.fighting]
    }
    
}
