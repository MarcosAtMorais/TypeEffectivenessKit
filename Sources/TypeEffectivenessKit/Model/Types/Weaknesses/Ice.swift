//
//  Ice.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

struct Ice: TypeWeaknessable {
    
    var type: PokemonType {
        return .ice
    }
    
    var noDamageFrom: [PokemonType] {
        return []
    }
    
    var halfDamageFrom: [PokemonType] {
        return [.ice]
    }
    
    var normalDamageFrom: [PokemonType] {
        return [.normal, .flying, .poison, .ground, .bug, .ghost, .water, .grass, .electric, .psychic, .dragon, .dark, .fairy]
    }
    
    var doubleDamageFrom: [PokemonType] {
        return [.fighting, .rock, .steel, .fire]
    }
    
}
