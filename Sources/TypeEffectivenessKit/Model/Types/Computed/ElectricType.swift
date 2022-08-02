//
//  ElectricType.swift
//  
//
//  Created by Marcos Morais on 28/07/22.
//

import Foundation

struct Electric: TypeWeaknessable {
    
    var type: PokemonType {
        return .electric
    }
    
    var noDamageFrom: [PokemonType] {
        return []
    }
    
    var halfDamageFrom: [PokemonType] {
        return [.flying, .steel, .electric]
    }
    
    var normalDamageFrom: [PokemonType] {
        return [.normal, .fighting, .poison, .rock, .bug, .ghost, .fire, .water, .grass, .psychic, .ice, .dragon, .dark, .fairy]
    }
    
    var doubleDamageFrom: [PokemonType] {
        return [.ground]
    }
    
}

enum ElectricType: TypeConformable {
    
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
                return [.steel]
            case .water:
                return [.steel]
            case .electric:
                return []
            case .grass:
                return [.electric]
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
                return [.flying]
            case .ghost:
                return []
            case .dragon:
                return [.electric]
            case .dark:
                return []
            case .steel:
                return [.flying, .steel]
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
                return [.flying, .steel, .electric]
            case .fire:
                return [.flying, .bug, .fire, .grass, .electric, .ice, .fairy]
            case .water:
                return [.flying, .fire, .water, .ice]
            case .electric:
                return [.flying, .steel, .electric]
            case .grass:
                return [.steel, .water, .grass]
            case .ice:
                return [.flying, .electric, .ice]
            case .fighting:
                return [.rock, .bug, .steel, .electric, .dark]
            case .poison:
                return [.fighting, .flying, .poison, .bug, .steel, .grass, .electric, .fairy]
            case .ground:
                return [.flying, .poison, .rock, .steel]
            case .flying:
                return [.fighting, .flying, .bug, .steel, .grass]
            case .psychic:
                return [.fighting, .flying, .steel, .electric, .psychic]
            case .bug:
                return [.fighting, .steel, .grass, .electric]
            case .rock:
                return [.normal, .poison, .fire, .electric]
            case .ghost:
                return [.flying, .poison, .bug, .steel, .electric]
            case .dragon:
                return [.flying, .steel, .fire, .water, .grass]
            case .dark:
                return [.flying, .ghost, .steel, .electric, .dark]
            case .steel:
                return [.normal, .rock, .bug, .grass, .electric, .psychic, .ice, .dragon, .fairy]
            case .fairy:
                return [.fighting, .flying, .bug, .electric, .dark]
            }
        }
    }
    
    var normalDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.normal, .poison, .rock, .bug, .fire, .water, .grass, .psychic, .ice, .dragon, .dark, .fairy]
            case .fire:
                return [.normal, .fighting, .poison, .ghost, .psychic, .dragon, .dark]
            case .water:
                return [.normal, .fighting, .poison, .rock, .bug, .ghost, .electric, .psychic, .dragon, .dark, .fairy]
            case .electric:
                return [.normal, .fighting, .poison, .rock, .bug, .ghost, .fire, .water, .grass, .psychic, .ice, .dragon, .dark, .fairy]
            case .grass:
                return [.normal, .fighting, .flying, .ground, .rock, .ghost, .psychic, .dragon, .dark, .fairy]
            case .ice:
                return [.normal, .poison, .bug, .ghost, .steel, .water, .grass, .psychic, .dragon, .dark, .fairy]
            case .fighting:
                return [.normal, .fighting, .flying, .poison, .ghost, .fire, .water, .grass, .ice, .dragon]
            case .poison:
                return [.normal, .rock, .ghost, .fire, .water, .ice, .dragon, .dark]
            case .ground:
                return [.normal, .fighting, .bug, .ghost, .fire, .psychic, .dragon, .dark, .fairy]
            case .flying:
                return [.normal, .poison, .ghost, .fire, .water, .electric, .psychic, .dragon, .dark, .fairy]
            case .psychic:
                return [.normal, .poison, .rock, .fire, .water, .grass, .ice, .dragon, .fairy]
            case .bug:
                return [.normal, .flying, .poison, .ground, .bug, .ghost, .water, .psychic, .ice, .dragon, .dark, .fairy]
            case .rock:
                return [.rock, .bug, .ghost, .steel, .psychic, .ice, .dragon, .dark, .fairy]
            case .ghost:
                return [.rock, .fire, .water, .grass, .psychic, .ice, .dragon, .fairy]
            case .dragon:
                return [.normal, .fighting, .poison, .rock, .bug, .ghost, .psychic, .dark]
            case .dark:
                return [.normal, .poison, .rock, .fire, .water, .grass, .ice, .dragon]
            case .steel:
                return [.ghost, .water, .dark]
            case .fairy:
                return [.normal, .rock, .ghost, .steel, .fire, .water, .grass, .psychic, .ice, .fairy]
            }
        }
    }
    
    var doubleDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.fighting, .ground]
            case .fire:
                return [.rock, .water]
            case .water:
                return [.grass, .ground]
            case .electric:
                return [.ground]
            case .grass:
                return [.poison, .bug, .fire, .ice]
            case .ice:
                return [.fighting, .ground, .rock, .fire]
            case .fighting:
                return [.ground, .psychic, .fairy]
            case .poison:
                return [.psychic]
            case .ground:
                return [.ground, .water, .grass, .ice]
            case .flying:
                return [.rock, .ice]
            case .psychic:
                return [.ground, .bug, .ghost, .dark]
            case .bug:
                return [.rock, .fire]
            case .rock:
                return [.fighting, .water, .grass]
            case .ghost:
                return [.ground, .ghost, .dark]
            case .dragon:
                return [.ground, .ice, .dragon, .fairy]
            case .dark:
                return [.fighting, .ground, .bug, .fairy]
            case .steel:
                return [.fighting, .fire]
            case .fairy:
                return [.poison, .ground]
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
                return [.ground]
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
                return [.ground]
            case .ground:
                return []
            case .flying:
                return []
            case .psychic:
                return []
            case .bug:
                return []
            case .rock:
                return [.ground]
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
