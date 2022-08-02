//
//  IceType.swift
//  
//
//  Created by Marcos Morais on 28/07/22.
//

import Foundation

struct Ice: TypeWeaknessable {
    
    var type: PokemonType {
        return .ice
    }
    
    var noDamageFrom: [PokemonType] {
        return []
    }
    
    var halfDamageFrom: [PokemonType] {
        return [.ice]
    }
    
    var normalDamageFrom: [PokemonType] {
        return [.normal, .flying, .poison, .ground, .bug, .ghost, .water, .grass, .electric, .psychic, .dragon, .dark, .fairy]
    }
    
    var doubleDamageFrom: [PokemonType] {
        return [.fighting, .rock, .steel, .fire]
    }
    
}

enum IceType: TypeConformable {
    
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
                return [.ice]
            case .water:
                return [.ice]
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
                return [.ice]
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
                return [.ice]
            case .fire:
                return [.bug, .grass, .fairy]
            case .water:
                return [.water]
            case .electric:
                return [.flying, .electric, .ice]
            case .grass:
                return [.ground, .water, .grass, .electric]
            case .ice:
                return [.ice]
            case .fighting:
                return [.bug, .ice, .dark]
            case .poison:
                return [.poison, .bug, .grass, .ice, .fairy]
            case .ground:
                return [.poison]
            case .flying:
                return [.bug, .grass]
            case .psychic:
                return [.psychic, .ice]
            case .bug:
                return [.ground, .grass, .ice]
            case .rock:
                return [.normal, .flying, .poison, .ice]
            case .ghost:
                return [.poison, .bug, .ice]
            case .dragon:
                return [.water, .grass, .electric]
            case .dark:
                return [.ghost, .ice, .dark]
            case .steel:
                return [.normal, .flying, .bug, .grass, .psychic, .dragon, .fairy]
            case .fairy:
                return [.bug, .ice, .dark]
            }
        }
    }
    
    var normalDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.normal, .flying, .poison, .ground, .bug, .water, .grass, .electric, .psychic, .dragon, .dark, .fairy]
            case .fire:
                return [.normal, .flying, .poison, .ghost, .steel, .fire, .electric, .psychic, .dragon, .dark]
            case .water:
                return [.normal, .flying, .poison, .ground, .bug, .ghost, .steel, .fire, .psychic, .dragon, .dark, .fairy]
            case .electric:
                return [.normal, .poison, .bug, .ghost, .steel, .water, .grass, .psychic, .dragon, .dark, .fairy]
            case .grass:
                return [.normal ,.ghost, .psychic, .ice, .dragon, .dark, .fairy]
            case .ice:
                return [.normal, .flying, .poison, .ground, .bug, .ghost , .water, .grass, .electric, .psychic, .dragon, .dark, .fairy]
            case .fighting:
                return [.normal, .poison, .ground, .rock, .ghost, .water, .grass, .electric, .dragon]
            case .poison:
                return [.normal, .fighting, .flying, .ghost, .water, .electric, .dragon, .dark]
            case .ground:
                return [.normal, .flying, .ground, .rock, .bug, .ghost, .psychic, .ice, .dragon, .dark, .fairy]
            case .flying:
                return [.normal, .fighting, .flying, .poison, .ghost, .water, .psychic, .ice, .dragon, .dark, .fairy]
            case .psychic:
                return [.normal, .fighting, .flying, .poison, .ground, .water, .grass, .electric, .dragon, .fairy]
            case .bug:
                return [.normal, .fighting, .poison, .bug, .ghost, .water, .electric, .psychic, .dragon, .dark, .fairy]
            case .rock:
                return [.bug, .ghost, .fire, .electric, .psychic, .dragon, .dark, .fairy]
            case .ghost:
                return [.flying, .ground, .water, .grass, .electric, .psychic, .dragon, .fairy]
            case .dragon:
                return [.normal, .flying, .poison, .ground, .bug, .ghost, .fire, .psychic, .ice, .dark]
            case .dark:
                return [.normal, .flying, .poison, .ground, .water, .grass, .electric, .dragon]
            case .steel:
                return [.rock, .ghost, .steel, .water, .electric, .dark]
            case .fairy:
                return [.normal, .fighting, .flying, .grass, .ghost, .water, .grass, .electric, .psychic, .fairy]
            }
        }
    }
    
    var doubleDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.rock, .steel, .fire]
            case .fire:
                return [.fighting, .ground, .water]
            case .water:
                return [.fighting, .rock, .grass, .electric]
            case .electric:
                return [.fighting, .ground, .rock, .fire]
            case .grass:
                return [.fighting, .flying, .poison, .rock, .bug, .steel]
            case .ice:
                return [.fighting, .rock, .steel, .fire]
            case .fighting:
                return [.fighting, .flying, .steel, .fire, .psychic, .fairy]
            case .poison:
                return [.ground, .rock, .steel, .fire, .psychic]
            case .ground:
                return [.fighting, .steel, .fire, .water, .grass]
            case .flying:
                return [.steel, .fire, .electric]
            case .psychic:
                return [.rock, .bug, .ghost, .steel, .fire, .dark]
            case .bug:
                return [.flying, .steel]
            case .rock:
                return [.ground, .rock, .water, .grass]
            case .ghost:
                return [.rock, .ghost, .steel, .fire, .dark]
            case .dragon:
                return [.fighting, .rock, .steel, .dragon, .fairy]
            case .dark:
                return [.rock, .bug, .steel, .fire, .fairy]
            case .steel:
                return [.ground]
            case .fairy:
                return [.poison, .rock, .fire]
            }
        }
    }
    
    var quadrupleDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.fighting]
            case .fire:
                return [.rock]
            case .water:
                return []
            case .electric:
                return []
            case .grass:
                return [.fire]
            case .ice:
                return []
            case .fighting:
                return []
            case .poison:
                return []
            case .ground:
                return []
            case .flying:
                return [.rock]
            case .psychic:
                return []
            case .bug:
                return [.rock, .fire]
            case .rock:
                return [.fighting, .steel]
            case .ghost:
                return []
            case .dragon:
                return []
            case .dark:
                return [.fighting]
            case .steel:
                return [.fighting, .fire]
            case .fairy:
                return [.steel]
            }
        }
    }
    
}
