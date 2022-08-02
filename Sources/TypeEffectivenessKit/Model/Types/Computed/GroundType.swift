//
//  GroundType.swift
//  
//
//  Created by Marcos Morais on 28/07/22.
//

import Foundation

struct Ground: TypeWeaknessable {
    
    var type: PokemonType {
        return .ground
    }
    
    var noDamageFrom: [PokemonType] {
        return [.electric]
    }
    
    var halfDamageFrom: [PokemonType] {
        return [.rock, .poison]
    }
    
    var normalDamageFrom: [PokemonType] {
        return [.normal, .fighting, .flying, .ground, .bug, .ghost, .steel, .fire, .psychic, .dark, .fairy, .dragon]
    }
    
    var doubleDamageFrom: [PokemonType] {
        return [.water, .grass, .ice]
    }
    
}

enum GroundType: TypeConformable {
    
    case secondType(type: PokemonType)
    
    var noDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.ghost, .electric]
            case .fire:
                return [.electric]
            case .water:
                return [.electric]
            case .electric:
                return [.electric]
            case .grass:
                return [.electric]
            case .ice:
                return [.electric]
            case .fighting:
                return [.electric]
            case .poison:
                return [.electric]
            case .ground:
                return [.electric]
            case .flying:
                return [.electric, .ground]
            case .psychic:
                return [.electric]
            case .bug:
                return [.electric]
            case .rock:
                return [.electric]
            case .ghost:
                return [.electric, .normal, .fighting]
            case .dragon:
                return [.electric]
            case .dark:
                return [.electric, .psychic]
            case .steel:
                return [.electric, .poison]
            case .fairy:
                return [.electric, .dragon]
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
                return [.rock]
            case .poison:
                return [.poison]
            case .ground:
                return []
            case .flying:
                return []
            case .psychic:
                return []
            case .bug:
                return []
            case .rock:
                return [.poison]
            case .ghost:
                return [.poison]
            case .dragon:
                return []
            case .dark:
                return []
            case .steel:
                return [.rock]
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
                return [.poison, .rock]
            case .fire:
                return [.poison, .bug, .steel, .fire, .fairy]
            case .water:
                return [.poison, .rock, .steel, .fire]
            case .electric:
                return [.flying, .poison, .rock, .steel]
            case .grass:
                return [.ground, .rock]
            case .ice:
                return [.poison]
            case .fighting:
                return [.poison, .bug, .dark]
            case .poison:
                return [.fire, .rock, .bug, .fairy]
            case .ground:
                return [.poison, .rock]
            case .flying:
                return [.fighting, .poison, .bug]
            case .psychic:
                return [.psychic, .poison, .rock, .psychic]
            case .bug:
                return [.fighting, .poison, .ground]
            case .rock:
                return [.normal, .flying, .rock, .fire]
            case .ghost:
                return [.rock, .bug]
            case .dragon:
                return [.poison, .rock, .fire]
            case .dark:
                return [.poison, .rock, .ghost, .dark]
            case .steel:
                return [.normal, .flying, .bug, .steel, .psychic, .dragon, .fairy]
            case .fairy:
                return [.fighting, .rock, .bug, .dark]
            }
        }
    }
    
    var normalDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.normal, .flying, .ground, .bug, .steel, .fire, .psychic, .dragon, .dark, .fairy]
            case .fire:
                return [.normal, .fighting, .flying, .rock, .ghost, .grass, .psychic, .ice, .dragon, .dark]
            case .water:
                return [.normal, .fighting, .flying, .ground, .bug, .ghost, .water, .psychic, .ice, .dragon, .dark, .fairy]
            case .electric:
                return [.normal, .fighting, .bug, .ghost, .fire, .psychic, .dragon, .dark, .fairy]
            case .grass:
                return [.normal, .fighting, .poison, .ghost, .steel, .water, .grass, .psychic, .dragon, .dark, .fairy]
            case .ice:
                return [.normal, .flying, .ground, .rock, .bug, .ghost, .psychic, .ice, .dragon, .dark, .fairy]
            case .fighting:
                return [.normal, .fighting, .ground, .ghost, .steel, .fire, .dragon]
            case .poison:
                return [.normal, .flying, .ghost, .steel, .fire, .grass, .dragon, .dark]
            case .ground:
                return [.normal, .fighting, .flying, .ground, .bug, .ghost, .steel, .fire, .psychic, .dragon, .dark, .fairy]
            case .flying:
                return [.normal, .flying, .rock, .ghost, .steel, .fire, .grass, .psychic, .dragon, .dark, .fairy]
            case .psychic:
                return [.normal, .flying, .ground, .steel, .fire, .dragon, .fairy]
            case .bug:
                return [.normal, .rock, .bug, .ghost, .steel, .grass, .psychic, .dragon, .dark, .fairy]
            case .rock:
                return [.bug, .ghost, .psychic, .dragon, .dark, .fairy]
            case .ghost:
                return [.flying, .ground, .steel, .fire, .psychic, .dragon, .fairy]
            case .dragon:
                return [.normal, .fighting, .flying, .ground, .bug, .ghost, .steel, .water, .grass, .psychic, .dark]
            case .dark:
                return [.normal, .flying, .ground, .steel, .fire, .dragon]
            case .steel:
                return [.ghost, .grass, .ice, .dark]
            case .fairy:
                return [.normal, .flying, .poison, .ground, .ghost, .fire, .psychic, .fairy]
            }
        }
    }
    
    var doubleDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.fighting, .water, .grass, .ice]
            case .fire:
                return [.ground]
            case .water:
                return []
            case .electric:
                return [.ground, .water, .grass, .ice]
            case .grass:
                return [.flying, .bug, .fire]
            case .ice:
                return [.fighting, .steel, .fire, .water, .grass]
            case .fighting:
                return [.flying, .water, .grass, .psychic, .ice, .fairy]
            case .poison:
                return [.ground, .water, .psychic, .ice]
            case .ground:
                return [.water, .grass, .ice]
            case .flying:
                return [.water]
            case .psychic:
                return [.bug, .ghost, .water, .grass, .ice, .dark]
            case .bug:
                return [.flying, .fire, .water, .ice]
            case .rock:
                return [.fighting, .ground, .steel, .ice]
            case .ghost:
                return [.ghost, .water, .grass, .ice, .dark]
            case .dragon:
                return [.dragon, .fairy]
            case .dark:
                return [.fighting, .bug, .water, .grass, .ice, .fairy]
            case .steel:
                return [.fighting, .ground, .fire, .water]
            case .fairy:
                return [.steel, .water, .grass, .ice]
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
                return [.water]
            case .water:
                return [.grass]
            case .electric:
                return []
            case .grass:
                return [.ice]
            case .ice:
                return []
            case .fighting:
                return []
            case .poison:
                return []
            case .ground:
                return []
            case .flying:
                return [.ice]
            case .psychic:
                return []
            case .bug:
                return []
            case .rock:
                return [.water, .grass]
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
