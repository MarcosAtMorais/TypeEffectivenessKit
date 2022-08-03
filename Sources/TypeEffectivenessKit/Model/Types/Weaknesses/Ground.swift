//
//  Ground.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

struct Ground: TypeWeaknessable {
    
    var type: PokemonType {
        return .ground
    }
    
    var noDamageFrom: [PokemonType] {
        return [.electric]
    }
    
    var halfDamageFrom: [PokemonType] {
        return [.rock, .poison]
    }
    
    var normalDamageFrom: [PokemonType] {
        return [.normal, .fighting, .flying, .ground, .bug, .ghost, .steel, .fire, .psychic, .dark, .fairy, .dragon]
    }
    
    var doubleDamageFrom: [PokemonType] {
        return [.water, .grass, .ice]
    }
    
}
