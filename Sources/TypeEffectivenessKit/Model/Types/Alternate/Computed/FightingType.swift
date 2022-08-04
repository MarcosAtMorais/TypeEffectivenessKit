//
//  File.swift
//  
//
//  Created by Marcos Morais on 28/07/22.
//

import Foundation

enum FightingType: TypeConformable {
    
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
                return []
            case .poison:
                return [.bug]
            case .ground:
                return [.rock]
            case .flying:
                return [.bug]
            case .psychic:
                return []
            case .bug:
                return [.bug]
            case .rock:
                return []
            case .ghost:
                return [.bug]
            case .dragon:
                return []
            case .dark:
                return [.dark]
            case .steel:
                return [.rock, .bug]
            case .fairy:
                return [.bug, .dark]
            }
        }
    }
    
    var halfDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.rock, .bug, .dark]
            case .fire:
                return [.steel, .fire, .grass, .ice, .dark]
            case .water:
                return [.rock, .bug, .steel, .fire, .water, .ice, .dark]
            case .electric:
                return [.rock, .bug, .steel, .electric, .dark]
            case .grass:
                return [.ground, .rock, .water, .grass, .electric, .dark]
            case .ice:
                return [.bug, .ice, .dark]
            case .fighting:
                return [.rock, .bug, .dark]
            case .poison:
                return [.fighting, .poison, .rock, .grass, .dark]
            case .ground:
                return [.poison, .bug, .dark]
            case .flying:
                return [.fighting, .grass, .dark]
            case .psychic:
                return [.fighting, .rock]
            case .bug:
                return [.fighting, .ground, .bug, .grass, .dark]
            case .rock:
                return [.normal, .poison, .rock, .bug, .fire, .dark]
            case .ghost:
                return [.poison, .rock]
            case .dragon:
                return [.rock, .bug, .fire, .water, .grass, .electric, .dark]
            case .dark:
                return [.rock, .ghost]
            case .steel:
                return [.normal, .steel, .grass, .ice, .dragon, .dark]
            case .fairy:
                return [.fighting, .rock]
            }
        }
    }
    
    var normalDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.normal, .poison, .ground, .steel, .fire, .water, .grass, .electric, .ice, .dragon]
            case .fire:
                return [.normal, .fighting, .poison, .rock, .ghost, .electric, .dragon, .fairy]
            case .water:
                return [.normal, .fighting, .poison, .ground, .ghost, .dragon]
            case .electric:
                return [.normal, .fighting, .flying, .poison, .ghost, .fire, .water, .grass, .ice, .dragon]
            case .grass:
                return [.normal, .fighting, .bug, .ghost, .steel, .dragon]
            case .ice:
                return [.normal, .poison, .ground, .rock, .ghost, .water, .grass, .electric, .dragon]
            case .fighting:
                return [.normal, .fighting, .poison, .ground, .ghost, .steel, .fire, .water, .grass, .electric, .ice, .dragon]
            case .poison:
                return [.normal, .ghost, .steel, .fire, .water, .electric, .ice, .dragon, .fairy]
            case .ground:
                return [.normal, .fighting, .ground, .ghost, .steel, .fire, .dragon]
            case .flying:
                return [.normal, .poison, .rock, .ghost, .steel, .fire, .water, .dragon]
            case .psychic:
                return [.normal, .poison, .ground, .bug, .steel, .fire, .water, .grass, .electric, .psychic, .ice, .dragon, .dark]
            case .bug:
                return [.normal, .poison, .rock, .ghost, .steel, .water, .electric, .ice, .dragon]
            case .rock:
                return [.flying, .ghost, .electric, .ice, .dragon]
            case .ghost:
                return [.ground, .steel, .fire, .water, .grass, .electric, .ice, .dragon, .dark]
            case .dragon:
                return [.normal, .fighting, .poison, .ground, .ghost, .steel]
            case .dark:
                return [.normal, .poison, .ground, .bug, .steel, .fire, .water, .grass, .electric, .ice, .dragon]
            case .steel:
                return [.flying, .ghost, .water, .electric, .psychic, .fairy]
            case .fairy:
                return [.normal, .ground, .ghost, .fire, .water, .grass, .electric, .ice]
            }
        }
    }
    
    var doubleDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.fighting, .flying, .psychic, .fairy]
            case .fire:
                return [.flying, .ground, .water, .psychic]
            case .water:
                return [.flying, .grass, .electric, .psychic, .fairy]
            case .electric:
                return [.ground, .psychic, .fairy]
            case .grass:
                return [.poison, .fire, .psychic, .ice, .fairy]
            case .ice:
                return [.fighting, .flying, .steel, .fire, .psychic, .fairy]
            case .fighting:
                return [.flying, .psychic, .fairy]
            case .poison:
                return [.flying, .ground]
            case .ground:
                return [.flying, .water, .grass, .psychic, .ice, .fairy]
            case .flying:
                return [.flying, .electric, .psychic, .ice, .fairy]
            case .psychic:
                return [.flying, .ghost, .fairy]
            case .bug:
                return [.fire, .psychic, .fairy]
            case .rock:
                return [.fighting, .ground, .steel, .water, .grass, .psychic, .fairy]
            case .ghost:
                return [.flying, .ghost, .psychic, .fairy]
            case .dragon:
                return [.flying, .psychic, .ice, .dragon]
            case .dark:
                return [.fighting, .flying]
            case .steel:
                return [.fighting, .ground, .fire]
            case .fairy:
                return [.flying, .poison, .steel, .psychic, .fairy]
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
                return [.flying]
            case .ice:
                return []
            case .fighting:
                return []
            case .poison:
                return [.psychic]
            case .ground:
                return []
            case .flying:
                return []
            case .psychic:
                return []
            case .bug:
                return [.flying]
            case .rock:
                return []
            case .ghost:
                return []
            case .dragon:
                return [.fairy]
            case .dark:
                return [.fairy]
            case .steel:
                return []
            case .fairy:
                return []
            }
        }
    }
    
}
