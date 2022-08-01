//
//  GrassType.swift
//  
//
//  Created by Marcos Morais on 28/07/22.
//

import Foundation

enum GrassType: TypeConformable {
    
    case secondType(type: PokemonType)
    
    var noDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.ghost]
            case .fire:
                return []
            case .water:
                return []
            case .electric:
                return []
            case .grass:
                return []
            case .ice:
                return []
            case .fighting:
                return []
            case .poison:
                return []
            case .ground:
                return [.electric]
            case .flying:
                return [.ground]
            case .psychic:
                return []
            case .bug:
                return []
            case .rock:
                return []
            case .ghost:
                return [.normal, .fighting]
            case .dragon:
                return []
            case .dark:
                return [.psychic]
            case .steel:
                return [.poison]
            case .fairy:
                return [.dragon]
            }
        }
    }
    
    var oneFourthDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return []
            case .fire:
                return [.grass]
            case .water:
                return [.water]
            case .electric:
                return [.electric]
            case .grass:
                return []
            case .ice:
                return []
            case .fighting:
                return []
            case .poison:
                return [.grass]
            case .ground:
                return []
            case .flying:
                return [.grass]
            case .psychic:
                return []
            case .bug:
                return []
            case .rock:
                return []
            case .ghost:
                return []
            case .dragon:
                return [.water, .grass, .electric]
            case .dark:
                return []
            case .steel:
                return [.grass]
            case .fairy:
                return []
            }
        }
    }
    
    var halfDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.ground, .water, .grass, .electric]
            case .fire:
                return [.steel, .electric, .fairy]
            case .water:
                return [.ground, .steel]
            case .electric:
                return [.steel, .water, .grass]
            case .grass:
                return [.ground, .water, .grass, .electric]
            case .ice:
                return [.ground, .water, .grass, .electric]
            case .fighting:
                return [.ground, .rock, .water, .grass, .electric, .dark]
            case .poison:
                return [.fighting, .water, .electric, .fairy]
            case .ground:
                return [.ground, .rock]
            case .flying:
                return [.fighting, .water]
            case .psychic:
                return [.fighting, .ground, .water, .grass, .electric, .psychic]
            case .bug:
                return [.fighting, .water, .electric]
            case .rock:
                return [.normal, .electric]
            case .ghost:
                return [.ground, .water, .grass, .electric]
            case .dragon:
                return [.ground]
            case .dark:
                return [.ground, .ghost, .water, .grass, .electric, .dark]
            case .steel:
                return [.normal, .rock, .steel, .water, .electric, .psychic, .dragon, .fairy]
            case .fairy:
                return [.fighting, .ground, .water, .grass, .electric, .dark]
            }
        }
    }
    
    var normalDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.normal, .rock, .steel, .psychic, .dragon, .dark, .fairy]
            case .fire:
                return [.normal, .fighting, .ground, .bug, .ghost, .fire, .water, .psychic, .ice, .dragon, .dark]
            case .water:
                return [.normal, .fighting, .rock, .ghost, .fire, .grass, .electric, .psychic, .ice, .dragon, .dark, .fairy]
            case .electric:
                return [.normal, .fighting, .flying, .ground, .rock, .ghost, .psychic, .dragon, .dark, .fairy]
            case .grass:
                return [.normal, .fighting, .rock, .ghost, .steel, .psychic, .dragon, .dark, .fairy]
            case .ice:
                return [.normal, .ghost, .psychic, .ice, .dragon, .dark, .fairy]
            case .fighting:
                return [.normal, .fighting, .bug, .ghost, .steel, .dragon]
            case .poison:
                return [.normal, .poison, .ground, .rock, .bug, .ghost, .steel, .dragon, .dark]
            case .ground:
                return [.normal, .fighting, .poison, .ghost, .steel, .water, .grass, .psychic, .dragon, .dark, .fairy]
            case .flying:
                return [.normal, .bug, .ghost, .steel, .electric, .psychic, .dragon, .dark, .fairy]
            case .psychic:
                return [.normal, .rock, .steel, .dragon, .fairy]
            case .bug:
                return [.normal, .ghost, .steel, .psychic, .dragon, .dark, .fairy]
            case .rock:
                return [.flying, .poison, .ground, .rock, .ghost, .fire, .water, .grass, .psychic, .dragon, .dark, .fairy]
            case .ghost:
                return [.poison, .rock, .bug, .steel, .psychic, .dragon, .fairy]
            case .dragon:
                return [.normal, .fighting, .rock, .ghost, .steel, .fire, .psychic, .dark]
            case .dark:
                return [.normal, .rock, .steel, .dragon]
            case .steel:
                return [.flying, .ground, .bug, .ghost, .ice, .dark]
            case .fairy:
                return [.normal, .rock, .bug, .ghost, .psychic, .fairy]
            }
        }
    }
    
    var doubleDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.fighting, .flying, .poison, .bug, .fire, .ice]
            case .fire:
                return [.flying, .poison, .rock]
            case .water:
                return [.flying, .poison, .bug]
            case .electric:
                return [.poison, .bug, .fire, .ice]
            case .grass:
                return [.flying, .poison, .bug, .fire, .ice]
            case .ice:
                return [.fighting, .flying, .poison, .rock, .bug, .steel]
            case .fighting:
                return [.poison, .fire, .psychic, .ice, .fairy]
            case .poison:
                return [.flying, .fire, .psychic, .ice]
            case .ground:
                return [.flying, .bug, .fire]
            case .flying:
                return [.flying, .poison, .rock, .fire]
            case .psychic:
                return [.flying, .poison, .ghost, .fire, .ice, .dark]
            case .bug:
                return [.poison, .rock, .bug, .ice]
            case .rock:
                return [.fighting, .bug, .steel, .ice]
            case .ghost:
                return [.flying, .ghost, .fire, .ice, .dark]
            case .dragon:
                return [.flying, .poison, .bug, .dragon, .fairy]
            case .dark:
                return [.fighting, .flying, .poison, .fire, .ice , .fairy]
            case .steel:
                return [.fighting]
            case .fairy:
                return [.flying, .steel, .fire, .ice]
            }
        }
    }
    
    var quadrupleDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return []
            case .fire:
                return []
            case .water:
                return []
            case .electric:
                return []
            case .grass:
                return []
            case .ice:
                return [.fire]
            case .fighting:
                return [.flying]
            case .poison:
                return []
            case .ground:
                return [.ice]
            case .flying:
                return [.ice]
            case .psychic:
                return [.bug]
            case .bug:
                return [.flying, .fire]
            case .rock:
                return []
            case .ghost:
                return []
            case .dragon:
                return [.ice]
            case .dark:
                return [.bug]
            case .steel:
                return [.fire]
            case .fairy:
                return [.poison]
            }
        }
    }
    
}
