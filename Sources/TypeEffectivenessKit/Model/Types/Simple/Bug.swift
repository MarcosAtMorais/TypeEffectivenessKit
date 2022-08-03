//
//  Bug.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

struct Bug: TypeWeaknessable {
    
    var type: PokemonType {
        return .bug
    }
    
    var noDamageFrom: [PokemonType] {
        return []
    }
    
    var halfDamageFrom: [PokemonType] {
        return [.fighting, .ground, .grass]
    }
    
    var normalDamageFrom: [PokemonType] {
        return [.normal, .poison, .bug, .ghost, .steel, .water, .electric, .psychic, .ice, .dragon, .dark, .fairy]
    }
    
    var doubleDamageFrom: [PokemonType] {
        return [.flying, .rock, .fire]
    }
    
}
