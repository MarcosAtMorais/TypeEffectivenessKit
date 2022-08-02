//
//  SteelType.swift
//  
//
//  Created by Marcos Morais on 29/07/22.
//

import Foundation

enum Steel: TypeWeaknessable {
    
    var type: PokemonType {
        return .steel
    }
    
    var noDamageFrom: [PokemonType] {
        return [.poison]
    }
    
    var halfDamageFrom: [PokemonType] {
        return [.normal, .flying, .rock, .bug, .steel, .grass, .psychic, .ice, .dragon, .fairy]
    }
    
    var normalDamageFrom: [PokemonType] {
        return [.ghost, .water, .electric, .dark]
    }
    
    var doubleDamageFrom: [PokemonType] {
        return [.fighting, .ground, .fire]
    }
    
}

enum SteelType: TypeConformable {
    
    case secondType(type: PokemonType)
    
    var noDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.poison, .ghost]
            case .fire:
                return [.poison]
            case .water:
                return [.poison]
            case .electric:
                return [.poison]
            case .grass:
                return [.poison]
            case .ice:
                return [.poison]
            case .fighting:
                return [.poison]
            case .poison:
                return [.poison]
            case .ground:
                return [.poison, .electric]
            case .flying:
                return [.poison, .ground]
            case .psychic:
                return [.poison]
            case .bug:
                return [.poison]
            case .rock:
                return [.poison]
            case .ghost:
                return [.poison, .normal, .fighting]
            case .dragon:
                return [.poison]
            case .dark:
                return [.poison, .psychic]
            case .steel:
                return [.poison]
            case .fairy:
                return [.poison, .dragon]
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
                return [.bug, .steel, .grass, .ice, .fairy]
            case .water:
                return [.steel, .ice]
            case .electric:
                return [.flying, .steel]
            case .grass:
                return [.grass]
            case .ice:
                return [.ice]
            case .fighting:
                return [.rock, .bug]
            case .poison:
                return [.bug, .grass, .fairy]
            case .ground:
                return [.rock]
            case .flying:
                return [.bug, .grass]
            case .psychic:
                return [.psychic]
            case .bug:
                return [.grass]
            case .rock:
                return [.normal, .flying]
            case .ghost:
                return [.bug]
            case .dragon:
                return [.grass]
            case .dark:
                return []
            case .steel:
                return []
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
                return [.normal, .flying, .rock, .bug, .steel, .grass, .psychic, .ice, .dragon, .fairy]
            case .fire:
                return [.normal, .flying, .psychic, .dragon]
            case .water:
                return [.normal, .flying, .rock, .bug, .water, .psychic, .dragon, .fairy]
            case .electric:
                return [.normal, .rock, .bug, .grass, .electric, .psychic, .ice, .dragon, .fairy]
            case .grass:
                return [.normal, .rock, .steel, .water, .electric, .psychic, .dragon, .fairy]
            case .ice:
                return [.normal, .flying, .bug, .grass, .psychic, .dragon, .fairy]
            case .fighting:
                return [.normal, .steel, .grass, .ice, .dragon, .dark]
            case .poison:
                return [.normal, .flying, .rock, .steel, .ice, .dragon]
            case .ground:
                return [.normal, .flying, .bug, .steel, .psychic, .dragon, .fairy]
            case .flying:
                return [.normal, .flying, .steel, .psychic, .dragon, .fairy]
            case .psychic:
                return [.normal, .flying, .rock, .steel, .grass, .ice, .dragon, .fairy]
            case .bug:
                return [.normal, .bug, .steel, .psychic, .ice, .dragon, .fairy]
            case .rock:
                return [.rock, .bug, .psychic, .ice, .dragon, .fairy]
            case .ghost:
                return [.flying, .rock, .steel, .grass, .psychic, .ice, .dragon, .fairy]
            case .dragon:
                return [.normal, .flying, .rock, .bug, .steel, .water, .electric, .psychic]
            case .dark:
                return [.normal, .flying, .rock, .ghost, .steel, .grass, .ice, .dragon, .dark]
            case .steel:
                return [.normal, .flying, .rock, .bug, .steel, .grass, .psychic, .ice, .dragon, .fairy]
            case .fairy:
                return [.normal, .flying, .rock, .grass, .psychic, .ice, .dark, .fairy]
            }
        }
    }
    
    var normalDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.water, .electric, .dark]
            case .fire:
                return [.rock, .ghost, .fairy, .electric, .dark]
            case .water:
                return [.ghost, .fire, .grass, .dark]
            case .electric:
                return [.ghost, .water, .dark]
            case .grass:
                return [.flying, .ground, .bug, .ghost, .ice, .dark]
            case .ice:
                return [.rock, .ghost, .steel, .water, .electric, .dark]
            case .fighting:
                return [.flying, .ghost, .water, .electric, .psychic, .fairy]
            case .poison:
                return [.fighting, .ghost, .water, .electric, .psychic, .dark]
            case .ground:
                return [.ghost, .grass, .ice, .dark]
            case .flying:
                return [.fighting, .rock, .ghost, .water, .ice, .dark]
            case .psychic:
                return [.fighting, .bug, .water, .electric]
            case .bug:
                return [.fighting, .flying, .ground, .rock, .ghost, .water, .electric, .dark]
            case .rock:
                return [.ghost, .steel, .fire, .grass, .electric, .dark]
            case .ghost:
                return [.water, .electric]
            case .dragon:
                return [.ghost, .fire, .ice, .dragon, .dark, .fairy]
            case .dark:
                return [.bug, .water, .electric, .fairy]
            case .steel:
                return [.ghost, .water, .electric, .dark]
            case .fairy:
                return [.fighting, .ghost, .steel, .water, .electric]
            }
        }
    }
    
    var doubleDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.ground, .fire]
            case .fire:
                return [.fighting, .water]
            case .water:
                return [.fighting, .ground, .electric]
            case .electric:
                return [.fighting, .fire]
            case .grass:
                return [.fighting]
            case .ice:
                return [.ground]
            case .fighting:
                return [.fighting, .ground, .fire]
            case .poison:
                return [.fire]
            case .ground:
                return [.fighting, .ground, .fire, .water]
            case .flying:
                return [.fire, .electric]
            case .psychic:
                return [.ground, .ghost, .fire, .dark]
            case .bug:
                return []
            case .rock:
                return [.water]
            case .ghost:
                return [.ground, .ghost, .fire, .dark]
            case .dragon:
                return [.fighting, .ground]
            case .dark:
                return [.fairy]
            case .steel:
                return [.fighting, .ground, .fire]
            case .fairy:
                return [.ground, .fire]
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
                return [.ground]
            case .water:
                return []
            case .electric:
                return [.ground]
            case .grass:
                return [.fire]
            case .ice:
                return [.fighting, .fire]
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
                return [.fire]
            case .rock:
                return [.fighting, .ground]
            case .ghost:
                return []
            case .dragon:
                return []
            case .dark:
                return [.fighting]
            case .steel:
                return []
            case .fairy:
                return []
            }
        }
    }
    
}
