//
//  IceType.swift
//  
//
//  Created by Marcos Morais on 28/07/22.
//

import Foundation

enum IceType: TypeConformable {
    
    case secondType(type: PokemonType)
    
    var noDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.ghost]
            case .fire:
                return [.ghost]
            case .water:
                return [.ghost]
            case .electric:
                return [.ghost]
            case .grass:
                return [.ghost]
            case .ice:
                return [.ghost]
            case .fighting:
                return [.ghost]
            case .poison:
                return [.ghost]
            case .ground:
                return [.ghost, .electric]
            case .flying:
                return [.ghost, .ground]
            case .psychic:
                return [.ghost]
            case .bug:
                return [.ghost]
            case .rock:
                return [.ghost]
            case .ghost:
                return [.normal, .fighting, .ghost]
            case .dragon:
                return [.ghost]
            case .dark:
                return [.psychic, .ghost]
            case .steel:
                return [.ghost, .poison]
            case .fairy:
                return [.ghost, .dragon]
            }
        }
    }
    
    var halfDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return []
            case .fire:
                return [.fire, .grass, .ice, .bug, .steel, .fairy]
            case .water:
                return [.fire, .water, .ice, .steel]
            case .electric:
                return [.electric, .flying]
            case .grass:
                return [.water, .electric, .grass, .ground]
            case .ice:
                return [.ice]
            case .fighting:
                return [.bug, .rock, .dark]
            case .poison:
                return [.grass, .poison, .bug, .fairy]
            case .ground:
                return [.poison, .rock]
            case .flying:
                return [.grass, .bug]
            case .psychic:
                return [.psychic]
            case .bug:
                return [.grass, .ground]
            case .rock:
                return [.normal, .fire, .poison, .flying]
            case .ghost:
                return [.poison, .bug]
            case .dragon:
                return [.fire, .water, .electric, .grass]
            case .dark:
                return [.dark]
            case .steel:
                return [.normal, .grass, .ice, .flying, .psychic, .bug, .rock, .dragon, .steel, .fairy]
            case .fairy:
                return [.bug, .dark]
            }
        }
    }
    
    var normalDamageFrom: [PokemonType] {
        return []
    }
    
    var doubleDamageFrom: [PokemonType] {
        return []
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
                return [.fighting]
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
                return [.fighting]
            case .ghost:
                return []
            case .dragon:
                return []
            case .dark:
                return [.fighting]
            case .steel:
                return [.fighting]
            case .fairy:
                return []
            }
        }
    }
    
}
