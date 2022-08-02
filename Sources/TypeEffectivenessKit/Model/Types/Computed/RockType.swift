//
//  RockType.swift
//  
//
//  Created by Marcos Morais on 29/07/22.
//

import Foundation

enum Rock: TypeWeaknessable {
    
    var type: PokemonType {
        return .rock
    }
    
    var noDamageFrom: [PokemonType] {
        return []
    }
    
    var halfDamageFrom: [PokemonType] {
        return [.normal, .flying, .poison, .fire]
    }
    
    var normalDamageFrom: [PokemonType] {
        return [.rock, .bug, .ghost, .electric, .psychic, .ice, .dragon, .dark, .fairy]
    }
    
    var doubleDamageFrom: [PokemonType] {
        return [.fighting, .ground, .steel, .water, .grass]
    }
    
}

enum RockType: TypeConformable {
    
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
                return [.fire]
            case .water:
                return [.fire]
            case .electric:
                return [.flying]
            case .grass:
                return []
            case .ice:
                return []
            case .fighting:
                return []
            case .poison:
                return [.poison]
            case .ground:
                return [.poison]
            case .flying:
                return []
            case .psychic:
                return []
            case .bug:
                return []
            case .rock:
                return []
            case .ghost:
                return [.poison]
            case .dragon:
                return [.fire]
            case .dark:
                return []
            case .steel:
                return [.normal, .flying]
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
                return [.normal, .flying, .poison, .fire]
            case .fire:
                return [.normal, .flying, .poison, .bug, .ice, .fairy]
            case .water:
                return [.normal, .flying, .poison, .ice]
            case .electric:
                return [.normal, .poison, .fire, .electric]
            case .grass:
                return [.normal, .electric]
            case .ice:
                return [.normal, .flying, .poison, .ice]
            case .fighting:
                return [.normal, .poison, .rock, .bug, .fire, .dark]
            case .poison:
                return [.normal, .flying, .bug, .fire, .fairy]
            case .ground:
                return [.normal, .flying, .rock, .fire]
            case .flying:
                return [.normal, .flying, .poison, .bug, .fire]
            case .psychic:
                return [.normal, .flying, .poison, .fire, .psychic]
            case .bug:
                return [.normal, .poison]
            case .rock:
                return [.normal, .flying, .poison, .fire]
            case .ghost:
                return [.flying, .bug, .fire]
            case .dragon:
                return [.normal, .flying, .poison, .electric]
            case .dark:
                return [.normal, .flying, .poison, .ghost, .fire, .dark]
            case .steel:
                return [.rock, .bug, .psychic, .ice, .dragon, .fairy]
            case .fairy:
                return [.normal, .flying, .bug, .fire, .dark]
            }
        }
    }
    
    var normalDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.rock, .bug, .electric, .psychic, .ice, .dragon, .dark, .fairy]
            case .fire:
                return [.ghost, .steel, .grass, .electric, .psychic, .dragon, .dark]
            case .water:
                return [.rock, .bug, .ghost, .steel, .water, .psychic, .dragon, .dark, .fairy]
            case .electric:
                return [.rock, .bug, .ghost, .steel, .psychic, .ice, .dragon, .dark, .fairy]
            case .grass:
                return [.flying, .poison, .ground, .rock, .ghost, .fire, .water, .grass, .psychic, .dark, .dragon, .fairy]
            case .ice:
                return [.bug, .ghost, .fire, .electric, .psychic, .dragon, .dark, .fairy]
            case .fighting:
                return [.flying, .ghost, .electric, .ice, .dragon]
            case .poison:
                return [.fighting, .rock, .ghost, .grass, .electric, .ice, .dragon, .dark]
            case .ground:
                return [.bug, .ghost, .psychic, .dragon, .dark, .fairy]
            case .flying:
                return [.fighting, .ghost, .grass, .psychic, .dragon, .dark, .fairy]
            case .psychic:
                return [.fighting, .rock, .electric,. ice, .dragon, .fairy]
            case .bug:
                return [.fighting, .flying, .ground, .bug, .ghost, .fire, .grass, .electric, .psychic, .ice, .dragon, .dark, .fairy]
            case .rock:
                return [.rock, .bug, .ghost, .electric, .psychic, .ice, .dragon, .dark, .fairy]
            case .ghost:
                return [.rock, .electric, .psychic, .ice, .dragon, .fairy]
            case .dragon:
                return [.rock, .bug, .ghost, .water, .grass, .psychic, .dark]
            case .dark:
                return [.rock, .electric, .ice, .dragon]
            case .steel:
                return [.ghost, .steel, .fire, .grass, .electric, .dark]
            case .fairy:
                return [.fighting, .poison, .rock, .ghost, .electric, .psychic, .ice, .fairy]
            }
        }
    }
    
    var doubleDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.ground, .steel, .water, .grass]
            case .fire:
                return [.fighting, .rock]
            case .water:
                return [.fighting, .ground, .electric]
            case .electric:
                return [.fighting, .water, .grass]
            case .grass:
                return [.fighting, .bug, .steel, .ice]
            case .ice:
                return [.ground, .rock, .water, .grass]
            case .fighting:
                return [.fighting, .ground, .steel, .water, .grass, .psychic, .fairy]
            case .poison:
                return [.steel, .water, .psychic]
            case .ground:
                return [.fighting, .ground, .steel, .ice]
            case .flying:
                return [.rock, .steel, .water ,.electric, .ice]
            case .psychic:
                return [.ground, .bug, .ghost, .steel, .water, .grass, .dark]
            case .bug:
                return [.rock, .steel, .water]
            case .rock:
                return [.fighting, .ground, .steel, .water, .grass]
            case .ghost:
                return [.ground, .ghost, .steel, .water, .grass, .dark]
            case .dragon:
                return [.fighting, .ground, .steel, .ice, .dragon, .fairy]
            case .dark:
                return [.ground, .bug, .steel, .water, .grass, .fairy]
            case .steel:
                return [.water]
            case .fairy:
                return [.ground, .water, .grass]
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
                return [.ground, .water]
            case .water:
                return [.grass]
            case .electric:
                return [.ground]
            case .grass:
                return []
            case .ice:
                return [.fighting, .steel]
            case .fighting:
                return []
            case .poison:
                return [.ground]
            case .ground:
                return [.water, .grass]
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
                return [.fighting]
            case .steel:
                return [.fighting, .ground]
            case .fairy:
                return [.steel]
            }
        }
    }
    
}
