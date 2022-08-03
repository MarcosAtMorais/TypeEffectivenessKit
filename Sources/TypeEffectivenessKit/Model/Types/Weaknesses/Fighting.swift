//
//  Fighting.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

struct Fighting: TypeWeaknessable {
    
    var type: PokemonType {
        return .fighting
    }
    
    var noDamageFrom: [PokemonType] {
        return []
    }
    
    var halfDamageFrom: [PokemonType] {
        return [.rock, .bug, .dark]
    }
    
    var normalDamageFrom: [PokemonType] {
        return [.normal, .fighting, .poison, .ground, .ghost, .steel, .fire, .water, .grass, .electric, .ice, .dragon]
    }
    
    var doubleDamageFrom: [PokemonType] {
        return [.flying, .psychic, .fairy]
    }
    
}
