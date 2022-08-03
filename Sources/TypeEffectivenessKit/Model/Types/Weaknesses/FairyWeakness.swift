//
//  File.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

struct FairyWeakness: TypeWeaknessable {
    
    static var `default`: TypeWeaknessable {
        return FairyWeakness()
    }
    
    var type: PokemonType {
        return .fairy
    }
    
    var noDamageFrom: [PokemonType] {
        return [.dragon]
    }
    
    var halfDamageFrom: [PokemonType] {
        return [.fighting, .bug, .dark]
    }
    
    var normalDamageFrom: [PokemonType] {
        return [.normal, .flying, .ground, .rock, .ghost, .fire, .water, .grass, .electric, .ice, .psychic, .fairy]
    }
    
    var doubleDamageFrom: [PokemonType] {
        return [.poison, .steel]
    }
    
}
