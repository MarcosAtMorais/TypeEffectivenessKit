//
//  GhostType.swift
//  
//
//  Created by Marcos Morais on 29/07/22.
//

import Foundation

enum GhostType: TypeConformable {
    
    case secondType(type: PokemonType)
    
    var noDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.normal, .fighting, .ghost]
            case .fire:
                return [.normal, .fighting]
            case .water:
                return [.normal, .fighting]
            case .electric:
                return [.normal, .fighting]
            case .grass:
                return [.normal, .fighting]
            case .ice:
                return [.normal, .fighting]
            case .fighting:
                return [.normal, .fighting]
            case .poison:
                return [.normal, .fighting]
            case .ground:
                return [.normal, .fighting, .electric]
            case .flying:
                return [.normal, .fighting, .ground]
            case .psychic:
                return [.normal, .fighting]
            case .bug:
                return [.normal, .fighting]
            case .rock:
                return [.normal, .fighting]
            case .ghost:
                return [.normal, .fighting]
            case .dragon:
                return [.normal, .fighting]
            case .dark:
                return [.normal, .fighting, .psychic]
            case .steel:
                return [.normal, .fighting, .poison]
            case .fairy:
                return [.normal, .fighting, .dragon]
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
                return [.bug]
            case .water:
                return []
            case .electric:
                return []
            case .grass:
                return []
            case .ice:
                return []
            case .fighting:
                return [.bug]
            case .poison:
                return [.bug, .poison]
            case .ground:
                return [.poison]
            case .flying:
                return [.bug]
            case .psychic:
                return []
            case .bug:
                return []
            case .rock:
                return [.poison]
            case .ghost:
                return []
            case .dragon:
                return []
            case .dark:
                return []
            case .steel:
                return [.bug]
            case .fairy:
                return [.bug]
            }
        }
    }
    
    var halfDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.poison, .bug]
            case .fire:
                return [.poison, .steel, .fire, .grass, .ice, .fairy]
            case .water:
                return [.poison, .bug, .steel, .fire, .water, .ice]
            case .electric:
                return [.flying, .poison, .bug, .steel, .electric]
            case .grass:
                return [.ground, .water, .grass, .electric]
            case .ice:
                return [.poison, .bug , .ice]
            case .fighting:
                return [.poison, .rock]
            case .poison:
                return [.grass, .fairy]
            case .ground:
                return [.rock, .bug]
            case .flying:
                return [.poison, .grass]
            case .psychic:
                return [.poison, .psychic]
            case .bug:
                return [.poison, .ground, .bug, .grass]
            case .rock:
                return [.flying, .bug, .fire]
            case .ghost:
                return [.poison, .bug]
            case .dragon:
                return [.poison, .bug, .fire, .water, .grass, .electric]
            case .dark:
                return [.poison]
            case .steel:
                return [.flying, .rock, .steel, .grass, .psychic, .ice, .dragon, .fairy]
            case .fairy:
                return []
            }
        }
    }
    
    var normalDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.flying, .ground, .rock, .steel, .fire, .water, .grass, .electric, .psychic, .ice, .dragon, .fairy]
            case .fire:
                return [.flying, .electric, .psychic, .dragon]
            case .water:
                return [.flying, .ground, .rock, .psychic, .dragon, .fairy]
            case .electric:
                return [.rock, .fire, .water, .grass, .psychic, .ice, .dragon, .fairy]
            case .grass:
                return [.poison, .rock, .bug, .steel, .psychic, .dragon, .fairy]
            case .ice:
                return [.flying, .ground, .water, .grass, .electric, .psychic, .dragon, .fairy]
            case .fighting:
                return [.ground, .steel, .fire, .water, .grass, .electric, .ice, .dragon, .dark]
            case .poison:
                return [.flying, .rock, .steel, .fire, .water, .electric, .ice, .dragon]
            case .ground:
                return [.flying, .ground, .steel, .fire, .psychic, .dragon, .fairy]
            case .flying:
                return [.flying, .steel, .fire, .water, .psychic, .dragon, .fairy]
            case .psychic:
                return [.flying, .ground, .rock, .bug, .steel, .fire, .water, .grass, .electric, .ice, .dragon, .fairy]
            case .bug:
                return [.steel, .water, .electric, .psychic, .ice, .dragon, .fairy]
            case .rock:
                return [.rock, .electric, .psychic, .ice, .dragon, .fairy]
            case .ghost:
                return [.flying, .grass, .ground, .rock, .steel, .fire, .water, .electric, .psychic, .ice, .dragon, .fairy]
            case .dragon:
                return [.flying, .ground, .rock, .steel, .psychic]
            case .dark:
                return [.flying, .ground, .rock, .bug, .ghost, .steel, .fire, .water, .grass, .electric, .ice, .dragon, .dark]
            case .steel:
                return [.water, .electric]
            case .fairy:
                return [.flying, .poison, .ground, .rock, .fire, .water, .grass, .electric, .psychic, .ice, .dark, .fairy]
            }
        }
    }
    
    var doubleDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.dark]
            case .fire:
                return [.ground, .rock, .ghost, .water, .dark]
            case .water:
                return [.ghost, .grass, .electric, .dark]
            case .electric:
                return [.ground, .ghost, .dark]
            case .grass:
                return [.flying, .ghost, .fire, .ice, .dark]
            case .ice:
                return [.rock, .ghost, .steel, .fire, .dark]
            case .fighting:
                return [.flying, .ghost, .psychic, .fairy]
            case .poison:
                return [.ground, .ghost, .psychic, .dark]
            case .ground:
                return [.ghost, .water, .grass, .ice, .dark]
            case .flying:
                return [.rock, .ghost, .electric, .ice, .dark]
            case .psychic:
                return []
            case .bug:
                return [.flying, .rock, .ghost, .fire, .dark]
            case .rock:
                return [.ground, .ghost, .steel, .water, .grass, .dark]
            case .ghost:
                return [.ghost, .dark]
            case .dragon:
                return [.ghost, .ice, .dragon, .dark, .fairy]
            case .dark:
                return [.fairy]
            case .steel:
                return [.ground, .ghost, .fire, .dark]
            case .fairy:
                return [.ghost, .steel]
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
                return []
            case .fighting:
                return []
            case .poison:
                return []
            case .ground:
                return []
            case .flying:
                return []
            case .psychic:
                return [.ghost, .dark]
            case .bug:
                return []
            case .rock:
                return []
            case .ghost:
                return []
            case .dragon:
                return []
            case .dark:
                return []
            case .steel:
                return []
            case .fairy:
                return []
            }
        }
    }
    
}
