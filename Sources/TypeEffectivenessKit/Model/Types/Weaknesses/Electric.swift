//
//  Electric.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

struct Electric: TypeWeaknessable {
    
    var type: PokemonType {
        return .electric
    }
    
    var noDamageFrom: [PokemonType] {
        return []
    }
    
    var halfDamageFrom: [PokemonType] {
        return [.flying, .steel, .electric]
    }
    
    var normalDamageFrom: [PokemonType] {
        return [.normal, .fighting, .poison, .rock, .bug, .ghost, .fire, .water, .grass, .psychic, .ice, .dragon, .dark, .fairy]
    }
    
    var doubleDamageFrom: [PokemonType] {
        return [.ground]
    }
    
}
