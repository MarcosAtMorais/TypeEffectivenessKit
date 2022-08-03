//
//  Dragon.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

struct Dragon: TypeWeaknessable {
    
    var type: PokemonType {
        return .dragon
    }
    
    var noDamageFrom: [PokemonType] {
        return []
    }
    
    var halfDamageFrom: [PokemonType] {
        return [.fire, .water, .grass, .electric]
    }
    
    var normalDamageFrom: [PokemonType] {
        return [.normal, .fighting, .flying, .poison, .ground, .rock, .bug, .ghost, .steel, .psychic, .dark]
    }
    
    var doubleDamageFrom: [PokemonType] {
        return [.ice, .dragon, .fairy]
    }
    
}
