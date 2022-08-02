//
//  PsychicType.swift
//  
//
//  Created by Marcos Morais on 28/07/22.
//

import Foundation

struct Psychic: TypeWeaknessable {
    
    var type: PokemonType {
        return .psychic
    }
    
    var noDamageFrom: [PokemonType] {
        return []
    }
    
    var halfDamageFrom: [PokemonType] {
        return [.fighting, .psychic]
    }
    
    var normalDamageFrom: [PokemonType] {
        return [.normal, .flying, .poison, .ground, .rock, .steel, .fire, .water, .grass, .electric, .ice, .dragon, .fairy]
    }
    
    var doubleDamageFrom: [PokemonType] {
        return [.bug, .ghost, .dark]
    }
    
}

enum PsychicType: TypeConformable {
    
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
                return [.fighting]
            case .ground:
                return []
            case .flying:
                return [.fighting]
            case .psychic:
                return []
            case .bug:
                return [.fighting]
            case .rock:
                return []
            case .ghost:
                return []
            case .dragon:
                return []
            case .dark:
                return []
            case .steel:
                return [.psychic]
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
                return [.psychic]
            case .fire:
                return [.fighting, .steel, .fire, .grass, .psychic, .ice, .fairy]
            case .water:
                return [.fighting, .steel, .fire, .water, .psychic, .ice]
            case .electric:
                return [.fighting, .flying, .steel, .electric]
            case .grass:
                return [.fighting, .ground, .water, .grass, .electric, .psychic]
            case .ice:
                return [.psychic, .ice]
            case .fighting:
                return [.fighting, .rock]
            case .poison:
                return [.poison, .grass, .fairy]
            case .ground:
                return [.fighting, .poison, .rock, .psychic]
            case .flying:
                return [.grass, .psychic]
            case .psychic:
                return [.fighting, .psychic]
            case .bug:
                return [.ground, .grass, .psychic]
            case .rock:
                return [.normal, .flying, .poison, .fire, .psychic]
            case .ghost:
                return [.poison, .psychic]
            case .dragon:
                return [.fighting, .fire, .water, .grass, .electric, .psychic]
            case .dark:
                return []
            case .steel:
                return [.normal, .flying, .rock, .steel, .grass, .ice, .dragon, .fairy]
            case .fairy:
                return [.psychic]
            }
        }
    }
    
    var normalDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.normal, .fighting, .flying, .poison, .ground, .rock, .steel, .fire, .water, .grass, .electric, .ice, .dragon, .fairy]
            case .fire:
                return [.normal, .flying, .poison, .bug, .electric, .dragon]
            case .water:
                return [.normal, .flying, .poison, .ground, .rock, .dragon, .fairy]
            case .electric:
                return [.normal, .poison, .rock, .fire, .water, .grass, .ice, .dragon, .fairy]
            case .grass:
                return [.normal, .rock, .steel, .dragon, .fairy]
            case .ice:
                return [.normal, .fighting, .flying, .poison, .ground, .water, .grass, .electric, .dragon, .fairy]
            case .fighting:
                return [.normal, .poison, .ground, .bug, .steel, .fire, .water, .grass, .electric, .psychic, .ice, .dragon, .dark]
            case .poison:
                return [.normal, .flying, .rock, .bug, .steel, .fire, .water, .electric, .psychic, .ice, .dragon]
            case .ground:
                return [.normal, .flying, .ground, .steel, .fire, .dragon, .fairy]
            case .flying:
                return [.normal, .flying, .poison, .bug, .steel, .fire, .water, .dragon, .fairy]
            case .psychic:
                return [.normal, .flying, .poison, .ground, .rock, .steel, .fire, .water, .grass, .electric, .ice, .dragon, .fairy]
            case .bug:
                return [.normal, .poison, .steel, .water, .electric, .ice, .dragon, .fairy]
            case .rock:
                return [.fighting, .rock, .electric, .ice, .dragon, .fairy]
            case .ghost:
                return [.flying, .rock, .ground, .bug, .steel, .fire, .water, .grass, .electric, .ice, .dragon, .fairy]
            case .dragon:
                return [.normal, .flying, .poison, .ground, .rock, .steel]
            case .dark:
                return [.normal, .fighting, .flying, .poison, .ground, .rock, .ghost, .steel, .fire, .water, .grass, .electric, .ice, .dragon, .dark]
            case .steel:
                return [.fighting, .bug, .water, .electric]
            case .fairy:
                return [.normal, .flying, .ground, .rock, .bug, .fire, .water, .grass, .electric, .ice, .dark, .fairy]
            }
        }
    }
    
    var doubleDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.bug, .dark]
            case .fire:
                return [.ground, .rock, .ghost, .water, .dark]
            case .water:
                return [.bug, .ghost, .grass, .electric, .dark]
            case .electric:
                return [.ground, .bug, .ghost, .dark]
            case .grass:
                return [.flying, .poison, .ghost, .fire, .ice, .dark]
            case .ice:
                return [.rock, .bug, .ghost, .steel, .fire, .dark]
            case .fighting:
                return [.flying, .ghost, .fairy]
            case .poison:
                return [.ground, .ghost, .dark]
            case .ground:
                return [.bug, .ghost, .water, .grass, .ice, .dark]
            case .flying:
                return [.rock, .ghost, .electric, .ice, .dark]
            case .psychic:
                return [.bug, .ghost, .dark]
            case .bug:
                return [.flying, .rock, .bug, .ghost, .fire, .dark]
            case .rock:
                return [.ground, .bug, .ghost, .steel, .water, .grass, .dark]
            case .ghost:
                return []
            case .dragon:
                return [.bug, .ghost, .ice, .dragon, .dark, .fairy]
            case .dark:
                return [.fairy]
            case .steel:
                return [.ground, .ghost, .fire, .dark]
            case .fairy:
                return [.poison, .ghost, .steel]
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
                return [.bug]
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
                return []
            case .bug:
                return []
            case .rock:
                return []
            case .ghost:
                return [.ghost, .dark]
            case .dragon:
                return []
            case .dark:
                return [.bug]
            case .steel:
                return []
            case .fairy:
                return []
            }
        }
    }
    
}
