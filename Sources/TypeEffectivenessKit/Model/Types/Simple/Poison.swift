//
//  Poison.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

struct Poison: TypeWeaknessable {
    
    var type: PokemonType {
        return .poison
    }
    
    var noDamageFrom: [PokemonType] {
        return []
    }
    
    var halfDamageFrom: [PokemonType] {
        return [.fighting, .poison, .bug, .grass, .fairy]
    }
    
    var normalDamageFrom: [PokemonType] {
        return [.normal, .flying, .rock, .ghost, .steel, .fire, .water, .electric, .ice, .dragon, .dark]
    }
    
    var doubleDamageFrom: [PokemonType] {
        return [.ground, .psychic]
    }
    
}
