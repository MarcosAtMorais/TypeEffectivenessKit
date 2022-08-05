//
//  Steel.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

public struct SteelWeakness: TypeWeaknessable {
    
    static var `default`: TypeWeaknessable {
        return SteelWeakness()
    }
    
    var type: PokemonType {
        return .steel
    }
    
    var noDamageFrom: [PokemonType] {
        return [.poison]
    }
    
    var halfDamageFrom: [PokemonType] {
        return [.normal, .flying, .rock, .bug, .steel, .grass, .psychic, .ice, .dragon, .fairy]
    }
    
    var normalDamageFrom: [PokemonType] {
        return [.ghost, .water, .electric, .dark]
    }
    
    var doubleDamageFrom: [PokemonType] {
        return [.fighting, .ground, .fire]
    }
    
}
