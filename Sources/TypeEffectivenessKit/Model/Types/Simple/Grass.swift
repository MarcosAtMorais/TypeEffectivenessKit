//
//  Grass.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

struct Grass: TypeWeaknessable {
    
    var type: PokemonType {
        return .grass
    }
    
    var noDamageFrom: [PokemonType] {
        return []
    }
    
    var halfDamageFrom: [PokemonType] {
        return [.ground, .water, .grass, .electric]
    }
    
    var normalDamageFrom: [PokemonType] {
        return [.normal, .fighting, .rock, .ghost, .steel, .psychic, .dragon, .dark, .fairy]
    }
    
    var doubleDamageFrom: [PokemonType] {
        return [.flying, .poison, .bug, .fire, .ice]
    }
    
}
