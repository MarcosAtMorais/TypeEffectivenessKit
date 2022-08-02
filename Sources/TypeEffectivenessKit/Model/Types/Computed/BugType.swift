//
//  BugType.swift
//  
//
//  Created by Marcos Morais on 29/07/22.
//

import Foundation

struct Bug: TypeWeaknessable {
    
    var type: PokemonType {
        return .bug
    }
    
    var noDamageFrom: [PokemonType] {
        return []
    }
    
    var halfDamageFrom: [PokemonType] {
        return [.fighting, .ground, .grass]
    }
    
    var normalDamageFrom: [PokemonType] {
        return [.normal, .poison, .bug, .ghost, .steel, .water, .electric, .psychic, .ice, .dragon, .dark, .fairy]
    }
    
    var doubleDamageFrom: [PokemonType] {
        return [.flying, .rock, .fire]
    }
    
}

enum BugType: TypeConformable {
    
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
                return []
            case .electric:
                return []
            case .grass:
                return [.ground, .grass]
            case .ice:
                return []
            case .fighting:
                return []
            case .poison:
                return [.fighting, .grass]
            case .ground:
                return []
            case .flying:
                return [.fighting, .grass]
            case .psychic:
                return [.fighting]
            case .bug:
                return []
            case .rock:
                return []
            case .ghost:
                return []
            case .dragon:
                return [.grass]
            case .dark:
                return []
            case .steel:
                return [.grass]
            case .fairy:
                return [.fighting]
            }
        }
    }
    
    var halfDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.ground, .grass]
            case .fire:
                return [.fighting, .bug, .steel, .ice, .fairy]
            case .water:
                return [.fighting, .ground, .steel, .water, .ice]
            case .electric:
                return [.fighting, .steel, .grass, .electric]
            case .grass:
                return [.fighting, .water, .electric]
            case .ice:
                return [.ground, .grass, .ice]
            case .fighting:
                return [.fighting, .ground, .bug, .grass, .dark]
            case .poison:
                return [.poison, .bug, .fairy]
            case .ground:
                return [.fighting, .poison, .ground]
            case .flying:
                return [.bug]
            case .psychic:
                return [.ground, .grass, .psychic]
            case .bug:
                return [.fighting, .ground, .grass]
            case .rock:
                return [.normal, .poison]
            case .ghost:
                return [.poison, .ground, .bug, .grass]
            case .dragon:
                return [.fighting, .ground, .water, .electric]
            case .dark:
                return [.ground, .ghost, .grass, .dark]
            case .steel:
                return [.normal, .bug, .steel, .psychic, .ice, .dragon, .fairy]
            case .fairy:
                return [.ground, .bug, .grass, .dark]
            }
        }
    }
    
    var normalDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.normal, .fighting, .poison, .bug, .steel, .water, .electric, .psychic, .ice, .dragon, .dark, .fairy]
            case .fire:
                return [.normal, .poison, .ground, .ghost, .fire, .electric, .psychic, .dragon, .dark]
            case .water:
                return [.normal, .poison, .bug, .ghost, .fire, .grass, .psychic, .dragon, .dark, .fairy]
            case .electric:
                return [.normal, .flying, .poison, .ground, .bug, .ghost, .water, .psychic, .ice, .dragon, .dark, .fairy]
            case .grass:
                return [.normal, .ghost, .steel, .psychic, .dragon,. dark, .fairy]
            case .ice:
                return [.normal, .fighting, .poison, .bug, .ghost, .water, .electric, .psychic, .dragon, .dark, .fairy]
            case .fighting:
                return [.normal, .poison, .rock, .ghost, .steel, .water, .electric, .ice, .dragon]
            case .poison:
                return [.normal, .ground, .ghost, .steel, .water, .electric, .ice, .dragon, .dark]
            case .ground:
                return [.normal, .rock, .bug, .ghost, .steel, .grass, .psychic, .dragon, .dark, .fairy]
            case .flying:
                return [.normal, .poison, .ghost, .steel, .water, .psychic, .dark, .dragon, .fairy]
            case .psychic:
                return [.normal, .poison, .steel, .water, .electric, .ice, .dragon, .fairy]
            case .bug:
                return [.normal, .poison, .bug, .ghost, .steel, .water, .electric, .psychic, .ice, .dragon, .dark, .fairy]
            case .rock:
                return [.fighting, .flying, .ground, .bug, .ghost, .fire, .grass, .electric, .psychic, .ice, .dragon, .dark, .fairy]
            case .ghost:
                return [.steel, .water, .electric, .psychic, .ice, .dragon, .fairy]
            case .dragon:
                return [.normal, .poison, .bug, .ghost, .steel, .fire, .psychic, .dark]
            case .dark:
                return [.normal, .fighting, .poison, .steel, .water, .electric, .ice, .dragon]
            case .steel:
                return [.normal, .bug, .steel, .psychic, .ice, .dragon, .fairy]
            case .fairy:
                return [.normal, .ghost, .water, .electric, .psychic, .ice, .fairy]
            }
        }
    }
    
    var doubleDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.flying, .rock, .fire]
            case .fire:
                return [.flying, .water]
            case .water:
                return [.flying, .rock, .electric]
            case .electric:
                return [.rock, .fire]
            case .grass:
                return [.poison, .rock, .bug, .ice]
            case .ice:
                return [.flying, .steel]
            case .fighting:
                return [.fire, .psychic, .fairy]
            case .poison:
                return [.flying, .rock, .fire, .psychic]
            case .ground:
                return [.flying, .fire, .water, .ice]
            case .flying:
                return [.flying, .fire, .electric, .ice]
            case .psychic:
                return [.flying, .rock, .bug, .ghost, .fire, .dark]
            case .bug:
                return [.flying, .rock, .fire]
            case .rock:
                return [.rock, .steel, .water]
            case .ghost:
                return [.flying, .rock, .ghost, .fire, .dark]
            case .dragon:
                return [.flying, .rock, .ice, .dragon, .fairy]
            case .dark:
                return [.flying, .rock, .bug, .fire, .fairy]
            case .steel:
                return []
            case .fairy:
                return [.flying, .poison, .rock, .steel, .fire]
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
                return []
            case .electric:
                return []
            case .grass:
                return [.flying, .fire]
            case .ice:
                return [.rock, .fire]
            case .fighting:
                return [.flying]
            case .poison:
                return []
            case .ground:
                return []
            case .flying:
                return [.rock]
            case .psychic:
                return []
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
                return [.fire]
            case .fairy:
                return []
            }
        }
    }
    
}
