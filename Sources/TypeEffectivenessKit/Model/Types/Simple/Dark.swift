//
//  Dark.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

struct Dark: TypeWeaknessable {
    
    var type: PokemonType {
        return .dark
    }
    
    var noDamageFrom: [PokemonType] {
        return [.psychic]
    }
    
    var halfDamageFrom: [PokemonType] {
        return [.ghost, .dark]
    }
    
    var normalDamageFrom: [PokemonType] {
        return [.normal, .flying, .poison, .ground, .rock, .steel, .fire, .water, .grass, .electric, .ice, .dragon]
    }
    
    var doubleDamageFrom: [PokemonType] {
        return [.fighting, .bug, .fairy]
    }
    
}
