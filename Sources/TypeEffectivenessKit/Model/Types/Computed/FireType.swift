//
//  FireType.swift
//  
//
//  Created by Marcos Morais on 28/07/22.
//

import Foundation

enum FireType: TypeConformable {
    
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
                return []
            case .water:
                return [.fire, .ice, .steel]
            case .electric:
                return [.steel]
            case .grass:
                return [.grass]
            case .ice:
                return [.ice]
            case .fighting:
                return [.bug]
            case .poison:
                return [.grass, .bug, .fairy]
            case .ground:
                return []
            case .flying:
                return [.grass, .bug]
            case .psychic:
                return []
            case .bug:
                return [.grass]
            case .rock:
                return [.fire]
            case .ghost:
                return [.bug]
            case .dragon:
                return [.fire, .grass]
            case .dark:
                return []
            case .steel:
                return [.grass, .ice, .bug, .steel, .fairy]
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
                return [.fire, .grass, .ice, .bug, .steel, .fairy]
            case .fire:
                return [.fire, .grass, .ice, .bug, .steel, .fairy]
            case .water:
                return [.bug, .fairy]
            case .electric:
                return [.fire, .electric, .grass, .ice, .flying, .bug, .fairy]
            case .grass:
                return [.electric, .steel, .fairy]
            case .ice:
                return [.grass, .bug, .fairy]
            case .fighting:
                return [.fire, .grass, .ice, .dark, .steel]
            case .poison:
                return [.fire, .grass, .ice, .fighting, .poison, .steel]
            case .ground:
                return [.fire, .poison, .bug, .steel, .fairy]
            case .flying:
                return [.fire, .fighting, .steel, .fairy]
            case .psychic:
                return [.fire, .grass, .ice, .fighting, .psychic, .steel, .fairy]
            case .bug:
                return [.ice, .fighting, .bug, .steel, .fairy]
            case .rock:
                return [.normal, .ice, .poison, .flying, .bug, .fairy]
            case .ghost:
                return [.fire, .grass, .ice, .poison, .steel, .fairy]
            case .dragon:
                return [.electric, .bug, .steel]
            case .dark:
                return [.fire, .grass, .ice, .ghost, .dark, .steel]
            case .steel:
                return [.normal, .flying, .psychic, .dragon]
            case .fairy:
                return [.fire, .grass, .ice, .fighting, .dark, .fairy]
            }
        }
    }
    
    var normalDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.normal, .electric, .poison, .flying, .psychic, .dragon, .dark]
            case .fire:
                return [.normal, .electric, .fighting, .poison, .flying, .psychic, .ghost, .dragon, .dark]
            case .water:
                return [.normal, .water, .grass, .fighting, .poison, .flying, .psychic, .ghost, .dragon, .dark]
            case .electric:
                return [.normal, .fighting, .poison, .psychic, .ghost, .dragon, .dark]
            case .grass:
                return [.normal, .fire, .water, .ice, .fighting, .ground, .psychic, .bug, .ghost, .dragon, .dark]
            case .ice:
                return [.normal, .fire, .electric, .poison, .flying, .psychic, .ghost, .dragon, .dark, .steel]
            case .fighting:
                return [.normal, .electric, .fighting, .poison, .rock, .ghost, .dragon, .fairy]
            case .poison:
                return [.normal, .electric, .flying, .ghost, .dragon, .dark]
            case .ground:
                return [.normal, .grass, .ice, .fighting, .flying, .psychic, .rock, .ghost, .dragon, .dark]
            case .flying:
                return [.normal, .flying, .poison, .ghost, .psychic, .ice, .dragon, .dark]
            case .psychic:
                return [.normal, .flying, .poison, .bug, .electric, .dragon]
            case .bug:
                return [.normal, .poison, .ground, .ghost, .fire, .electric, .psychic, .dragon, .dark]
            case .rock:
                return [.ghost, .steel, .grass, .electric, .psychic, .dragon, .dark]
            case .ghost:
                return [.flying, .electric, .psychic, .dragon]
            case .dragon:
                return [.normal, .fighting, .flying, .poison, .ghost, .water, .psychic, .ice, .dark, .fairy]
            case .dark:
                return [.normal, .flying, .poison, .bug, .electric, .dragon, .fairy]
            case .steel:
                return [.rock, .ghost, .fire, .electric, .dark]
            case .fairy:
                return [.normal, .flying, .ghost, .steel, .electric,. psychic]
            }
        }
    }
    
    var doubleDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.fighting, .ground, .rock, .water]
            case .fire:
                return [.ground, .rock, .water]
            case .water:
                return [.ground, .rock, .electric]
            case .electric:
                return [.rock, .water]
            case .grass:
                return [.flying, .poison, .rock]
            case .ice:
                return [.fighting, .ground, .water]
            case .fighting:
                return [.flying, .ground, .water, .psychic]
            case .poison:
                return [.rock, .water, .psychic]
            case .ground:
                return [.ground]
            case .flying:
                return [.water, .electric]
            case .psychic:
                return [.ground, .rock, .ghost, .water, .dark]
            case .bug:
                return [.flying, .water]
            case .rock:
                return [.fighting, .rock]
            case .ghost:
                return [.ground, .rock, .ghost, .water, .dark]
            case .dragon:
                return [.ground, .rock, .dragon]
            case .dark:
                return [.fighting, .ground, .rock, .water]
            case .steel:
                return [.fighting, .water]
            case .fairy:
                return [.poison, .ground, .rock, .water]
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
                return [.ground]
            case .grass:
                return []
            case .ice:
                return [.rock]
            case .fighting:
                return []
            case .poison:
                return [.ground]
            case .ground:
                return [.water]
            case .flying:
                return [.rock]
            case .psychic:
                return []
            case .bug:
                return [.rock]
            case .rock:
                return [.ground, .water]
            case .ghost:
                return []
            case .dragon:
                return []
            case .dark:
                return []
            case .steel:
                return [.ground]
            case .fairy:
                return []
            }
        }
    }
    
}
