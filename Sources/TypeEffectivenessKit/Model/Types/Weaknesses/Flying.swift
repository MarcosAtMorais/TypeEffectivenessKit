//
//  Flying.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

struct Flying: TypeWeaknessable {
    
    var type: PokemonType {
        return .flying
    }
    
    var noDamageFrom: [PokemonType] {
        return [.ground]
    }
    
    var halfDamageFrom: [PokemonType] {
        return [.fighting, .bug, .grass]
    }
    
    var normalDamageFrom: [PokemonType] {
        return [.normal, .flying, .poison, .ghost, .steel, .fire, .water, .psychic, .dragon, .dark, .fairy]
    }
    
    var doubleDamageFrom: [PokemonType] {
        return [.rock, .electric, .ice]
    }
    
}
