//
//  WaterType.swift
//  
//
//  Created by Marcos Morais on 28/07/22.
//

import Foundation

struct Water: TypeWeaknessable {
    
    var type: PokemonType {
        return .water
    }
    
    var noDamageFrom: [PokemonType] {
        return []
    }
    
    var halfDamageFrom: [PokemonType] {
        return [.steel, .fire, .water, .ice]
    }
    
    var normalDamageFrom: [PokemonType] {
        return [.normal, .fighting, .flying, .poison, .ground, .rock, .bug, .ghost, .psychic, .dragon, .dark, .fairy]
    }
    
    var doubleDamageFrom: [PokemonType] {
        return [.grass, .electric]
    }
    
}

enum WaterType: TypeConformable {
    
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
                return [.steel, .fire, .ice]
            case .water:
                return []
            case .electric:
                return [.steel]
            case .grass:
                return [.water]
            case .ice:
                return [.ice]
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
                return [.fire, .water]
            case .dark:
                return []
            case .steel:
                return [.steel, .ice]
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
                return [.steel, .fire, .water, .ice]
            case .fire:
                return [.bug, .fairy]
            case .water:
                return [.steel, .fire, .water, .ice]
            case .electric:
                return [.flying, .fire, .water, .ice]
            case .grass:
                return [.ground, .steel]
            case .ice:
                return [.water]
            case .fighting:
                return [.rock, .bug, .steel, .fire, .water, .ice, .dark]
            case .poison:
                return [.fighting, .poison, .bug, .steel, .fire, .water, .ice, .fairy]
            case .ground:
                return [.poison, .rock, .steel, .fire]
            case .flying:
                return [.fighting, .bug, .steel, .fire, .water]
            case .psychic:
                return [.fighting, .steel, .fire, .water, .psychic, .ice]
            case .bug:
                return [.fighting, .ground, .steel, .water, .ice]
            case .rock:
                return [.normal, .flying, .poison, .ice]
            case .ghost:
                return [.poison, .bug, .steel, .fire, .water, .ice]
            case .dragon:
                return [.steel]
            case .dark:
                return [.ghost, .steel, .fire, .water, .ice, .dark]
            case .steel:
                return [.normal, .flying, .rock, .bug, .water, .psychic, .dragon, .fairy]
            case .fairy:
                return [.fighting, .bug, .fire, .water, .ice, .dark]
            }
        }
    }
    
    var normalDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.normal, .flying, .poison, .ground, .rock, .bug, .psychic, .dragon, .dark, .fairy]
            case .fire:
                return [.normal, .fighting, .flying, .poison, .ghost, .water, .grass, .psychic, .dragon, .dark]
            case .water:
                return [.normal, .fighting, .flying, .poison, .ground, .rock, .bug, .ghost, .psychic, .dragon, .dark, .fairy]
            case .electric:
                return [.normal, .fighting, .poison, .rock, .bug, .ghost, .electric, .psychic, .dragon, .dark, .fairy]
            case .grass:
                return [.normal, .fighting, .rock, .ghost, .fire, .grass, .electric, .psychic, .ice, .dragon, .dark, .fairy]
            case .ice:
                return [.normal, .flying, .poison, .ground, .bug, .ghost, .steel, .fire, .psychic, .dragon, .dark, .fairy]
            case .fighting:
                return [.normal, .fighting, .poison, .ground, .ghost, .dragon]
            case .poison:
                return [.normal, .flying, .rock, .ghost, .grass, .dragon, .dark]
            case .ground:
                return [.normal, .fighting, .flying, .ground, .bug, .ghost, .water, .psychic, .ice, .dragon, .dark, .fairy]
            case .flying:
                return [.normal, .flying, .poison, .ghost, .grass, .psychic, .ice, .dragon, .dark, .fairy]
            case .psychic:
                return [.normal, .flying, .poison, .ground, .rock, .dragon, .fairy]
            case .bug:
                return [.normal, .poison, .bug, .ghost, .fire, .grass, .psychic, .dragon, .dark, .fairy]
            case .rock:
                return [.rock, .bug, .ghost, .steel, .water, .psychic, .dragon, .dark, .fairy]
            case .ghost:
                return [.flying, .ground, .rock, .psychic, .dragon, .fairy]
            case .dragon:
                return [.normal, .fighting, .flying, .poison, .ground, .rock, .bug, .ghost, .grass, .electric, .psychic, .ice, .dark]
            case .dark:
                return [.normal, .flying, .poison, .ground, .rock, .dragon]
            case .steel:
                return [.ghost, .fire, .grass, .dark]
            case .fairy:
                return [.normal, .flying, .ground, .rock, .ghost, .steel, .psychic, .fairy]
            }
        }
    }
    
    var doubleDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.fighting, .grass, .electric]
            case .fire:
                return [.ground, .rock, .electric]
            case .water:
                return [.grass, .electric]
            case .electric:
                return [.ground, .grass]
            case .grass:
                return [.flying, .poison, .bug]
            case .ice:
                return [.fighting, .rock, .grass, .electric]
            case .fighting:
                return [.flying, .grass, .electric, .psychic, .fairy]
            case .poison:
                return [.ground, .electric, .psychic]
            case .ground:
                return []
            case .flying:
                return [.rock]
            case .psychic:
                return [.bug, .ghost, .grass, .electric, .dark]
            case .bug:
                return [.flying, .rock, .electric]
            case .rock:
                return [.fighting, .ground, .electric]
            case .ghost:
                return [.ghost, .grass, .electric, .dark]
            case .dragon:
                return [.dragon, .fairy]
            case .dark:
                return [.fighting, .bug, .grass, .electric, .fairy]
            case .steel:
                return [.fighting, .ground, .electric]
            case .fairy:
                return [.poison, .grass, .electric]
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
                return [.grass]
            case .flying:
                return [.electric]
            case .psychic:
                return []
            case .bug:
                return []
            case .rock:
                return [.grass]
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
