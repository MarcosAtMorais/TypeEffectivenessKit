//
//  FlyingType.swift
//  
//
//  Created by Marcos Morais on 28/07/22.
//

import Foundation

enum FlyingType: TypeConformable {
    
    case secondType(type: PokemonType)
    
    var noDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.ground, .ghost]
            case .fire:
                return [.ground]
            case .water:
                return [.ground]
            case .electric:
                return [.ground]
            case .grass:
                return [.ground]
            case .ice:
                return [.ground]
            case .fighting:
                return [.ground]
            case .poison:
                return [.ground]
            case .ground:
                return [.ground, .electric]
            case .flying:
                return [.ground]
            case .psychic:
                return [.ground]
            case .bug:
                return [.ground]
            case .rock:
                return [.ground]
            case .ghost:
                return [.ground, .normal, .fighting]
            case .dragon:
                return [.ground]
            case .dark:
                return [.ground, .psychic]
            case .steel:
                return [.ground, .poison]
            case .fairy:
                return [.ground, .dragon]
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
                return [.bug, .grass]
            case .water:
                return []
            case .electric:
                return []
            case .grass:
                return [.grass]
            case .ice:
                return []
            case .fighting:
                return [.bug]
            case .poison:
                return [.fighting, .bug, .grass]
            case .ground:
                return []
            case .flying:
                return []
            case .psychic:
                return [.fighting]
            case .bug:
                return [.fighting, .grass]
            case .rock:
                return []
            case .ghost:
                return [.bug]
            case .dragon:
                return [.grass]
            case .dark:
                return []
            case .steel:
                return [.bug, .grass]
            case .fairy:
                return [.fighting, .bug]
            }
        }
    }
    
    var halfDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.bug, .grass]
            case .fire:
                return [.fighting, .steel, .fire, .fairy]
            case .water:
                return [.fighting, .bug, .steel, .fire, .water]
            case .electric:
                return [.fighting, .flying, .bug, .steel, .grass]
            case .grass:
                return [.fighting, .water]
            case .ice:
                return [.bug, .grass]
            case .fighting:
                return [.fighting, .grass, .dark]
            case .poison:
                return [.poison, .fairy]
            case .ground:
                return [.fighting, .poison, .bug]
            case .flying:
                return [.fighting, .bug, .grass]
            case .psychic:
                return [.grass, .psychic]
            case .bug:
                return [.bug]
            case .rock:
                return [.normal, .flying, .poison, .bug, .fire]
            case .ghost:
                return [.poison, .grass]
            case .dragon:
                return [.fighting, .bug, .fire, .water]
            case .dark:
                return [.ghost, .grass, .dark]
            case .steel:
                return [.normal, .flying, .steel, .psychic, .dragon, .fairy]
            case .fairy:
                return [.grass, .dark]
            }
        }
    }
    
    var normalDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.normal, .fighting, .flying, .poison, .steel, .fire, .water, .psychic, .dragon, .dark, .fairy]
            case .fire:
                return [.normal, .flying, .poison, .ghost, .psychic, .ice, .dragon, .dark]
            case .water:
                return [.normal, .flying, .poison, .ghost, .grass, .psychic, .ice, .dragon, .dark, .fairy]
            case .electric:
                return [.normal, .poison, .ghost, .fire, .water, .electric, .psychic, .dragon, .dark, .fairy]
            case .grass:
                return [.normal, .bug, .ghost, .steel, .electric, .psychic, .dragon, .dark, .fairy]
            case .ice:
                return [.normal, .fighting, .flying, .poison, .ghost , .water, .psychic, .ice, .dragon, .dark, .fairy]
            case .fighting:
                return [.normal, .poison, .rock, .ghost, .steel, .fire, .water, .dragon]
            case .poison:
                return [.normal, .flying, .ghost, .steel, .fire, .water, .dragon, .dark]
            case .ground:
                return [.normal, .flying, .rock, .ghost, .steel, .fire, .grass, .psychic, .dragon, .dark, .fairy]
            case .flying:
                return [.normal, .flying, .poison, .psychic, .ghost, .steel, .fire, .water, .dragon, .dark, .fairy]
            case .psychic:
                return [.normal, .flying, .poison, .bug, .steel, .fire, .water, .dragon, .fairy]
            case .bug:
                return [.normal, .poison, .ghost, .steel, .water, .psychic, .dragon, .dark, .fairy]
            case .rock:
                return [.fighting, .ghost, .grass, .psychic, .dragon, .dark, .fairy]
            case .ghost:
                return [.flying, .steel, .fire, .water, .psychic, .dragon, .fairy]
            case .dragon:
                return [.normal, .flying, .poison, .ghost, .steel, .electric, .psychic, .dark]
            case .dark:
                return [.normal, .fighting, .flying, .poison, .bug, .steel, .fire, .water, .dragon]
            case .steel:
                return [.fighting, .rock, .ghost, .water, .ice, .dark]
            case .fairy:
                return [.normal, .flying, .ghost, .fire, .water, .psychic, .fairy]
            }
        }
    }
    
    var doubleDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.rock, .electric, .ice]
            case .fire:
                return [.water, .electric]
            case .water:
                return [.rock]
            case .electric:
                return [.rock, .ice]
            case .grass:
                return [.flying, .poison, .rock, .fire]
            case .ice:
                return [.steel, .fire, .electric]
            case .fighting:
                return [.flying, .electric, .psychic, .ice, .fairy]
            case .poison:
                return [.rock, .electric, .psychic, .ice]
            case .ground:
                return [.water]
            case .flying:
                return [.rock, .electric, .ice]
            case .psychic:
                return [.rock, .ghost, .electric, .ice, .dark]
            case .bug:
                return [.flying, .fire, .electric, .ice]
            case .rock:
                return [.rock, .steel, .water, .electric, .ice]
            case .ghost:
                return [.rock, .ghost, .electric, .ice, .dark]
            case .dragon:
                return [.rock, .dragon, .fairy]
            case .dark:
                return [.rock, .electric, .ice, .fairy]
            case .steel:
                return [.fighting, .rock, .ghost, .water, .ice, .dark]
            case .fairy:
                return [.poison, .rock, .steel, .electric, .ice]
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
                return [.rock]
            case .water:
                return [.electric]
            case .electric:
                return []
            case .grass:
                return [.ice]
            case .ice:
                return [.rock]
            case .fighting:
                return []
            case .poison:
                return []
            case .ground:
                return [.ice]
            case .flying:
                return []
            case .psychic:
                return []
            case .bug:
                return [.rock]
            case .rock:
                return []
            case .ghost:
                return []
            case .dragon:
                return [.ice]
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
