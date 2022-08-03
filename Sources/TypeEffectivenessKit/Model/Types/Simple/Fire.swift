//
//  Fire.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

struct Fire: TypeWeaknessable {
    
    var type: PokemonType {
        return .fire
    }
    
    var noDamageFrom: [PokemonType] {
        return []
    }
    
    var halfDamageFrom: [PokemonType] {
        return [.bug, .steel, .fire, .grass, .ice, .fairy]
    }
    
    var normalDamageFrom: [PokemonType] {
        return [.normal, .fighting, .flying, .poison, .ghost, .electric, .psychic, .dragon, .dark]
    }
    
    var doubleDamageFrom: [PokemonType] {
        return [.ground, .rock, .water]
    }
    
}
