//
//  PoisonType.swift
//  
//
//  Created by Marcos Morais on 28/07/22.
//

import Foundation

struct Poison: TypeWeaknessable {
    
    var type: PokemonType {
        return .poison
    }
    
    var noDamageFrom: [PokemonType] {
        return []
    }
    
    var halfDamageFrom: [PokemonType] {
        return [.fighting, .poison, .bug, .grass, .fairy]
    }
    
    var normalDamageFrom: [PokemonType] {
        return [.normal, .flying, .rock, .ghost, .steel, .fire, .water, .electric, .ice, .dragon, .dark]
    }
    
    var doubleDamageFrom: [PokemonType] {
        return [.ground, .psychic]
    }
    
}

enum PoisonType: TypeConformable {
    
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
                return [.bug, .grass, .fairy]
            case .water:
                return []
            case .electric:
                return []
            case .grass:
                return [.grass]
            case .ice:
                return []
            case .fighting:
                return [.bug]
            case .poison:
                return []
            case .ground:
                return [.poison]
            case .flying:
                return [.fighting, .bug, .grass]
            case .psychic:
                return [.fighting]
            case .bug:
                return [.fighting, .grass]
            case .rock:
                return [.poison]
            case .ghost:
                return [.poison, .bug]
            case .dragon:
                return [.grass]
            case .dark:
                return []
            case .steel:
                return [.bug, .grass, .fairy]
            case .fairy:
                return [.fighting, .bug]
            }
        }
    }
    
    var halfDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.poison, .bug, .grass, .fairy]
            case .fire:
                return [.fighting, .poison, .steel, .fire, .ice]
            case .water:
                return [.fighting, .poison, .bug, .steel, .fire, .water, .ice, .fairy]
            case .electric:
                return [.fighting, .flying, .poison, .bug, .steel, .grass, .electric, .fairy]
            case .grass:
                return [.fighting, .water, .electric, .fairy]
            case .ice:
                return [.poison, .bug, .grass, .ice, .fairy]
            case .fighting:
                return [.fighting, .poison, .rock, .grass, .dark]
            case .poison:
                return [.fighting, .poison, .bug, .grass, .fairy]
            case .ground:
                return [.fighting, .rock, .bug, .fairy]
            case .flying:
                return [.poison, .fairy]
            case .psychic:
                return [.poison, .grass, .fairy]
            case .bug:
                return [.poison, .bug, .fairy]
            case .rock:
                return [.normal, .flying, .bug, .fire, .fairy]
            case .ghost:
                return [.grass, .fairy]
            case .dragon:
                return [.fighting, .poison, .bug, .fire, .water, .electric]
            case .dark:
                return [.poison, .ghost, .grass, .dark]
            case .steel:
                return [.normal, .flying, .rock, .steel, .ice, .dragon]
            case .fairy:
                return [.grass, .dark, .fairy]
            }
        }
    }
    
    var normalDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.normal, .fighting, .flying, .rock, .steel, .fire, .water, .electric, .ice, .dragon, .dark]
            case .fire:
                return [.normal, .flying, .ghost, .electric, .dragon, .dark]
            case .water:
                return [.normal, .flying, .rock, .ghost, .grass, .dragon, .dark]
            case .electric:
                return [.normal, .rock, .ghost, .fire, .water, .ice, .dragon, .dark]
            case .grass:
                return [.normal, .poison, .ground, .rock, .bug, .ghost, .steel, .dragon, .dark]
            case .ice:
                return [.normal, .fighting, .flying, .ghost, .water, .electric, .dragon, .dark]
            case .fighting:
                return [.normal, .ghost, .steel, .fire, .water, .electric, .ice, .dragon, .fairy]
            case .poison:
                return [.normal, .flying, .rock, .ghost, .steel, .fire, .water, .electric, .ice, .dragon, .dark]
            case .ground:
                return [.normal, .flying, .ghost, .steel, .fire, .grass, .dragon, .dark]
            case .flying:
                return [.normal, .flying, .ghost, .steel, .fire, .water, .dragon, .dark]
            case .psychic:
                return [.normal, .flying, .rock, .bug, .steel, .fire, .water ,.electric, .psychic, .ice, .dragon]
            case .bug:
                return [.normal, .ground, .ghost, .steel, .water, .electric, .ice, .dragon, .dark]
            case .rock:
                return [.fighting, .rock, .ghost, .grass, .electric, .ice, .dragon, .dark]
            case .ghost:
                return [.flying, .rock, .steel, .fire, .water, .electric, .ice, .dragon]
            case .dragon:
                return [.normal, .flying, .rock, .ghost, .steel, .dark, .fairy]
            case .dark:
                return [.normal, .fighting, .flying, .rock, .bug, .steel, .fire, .water, .electric, .ice, .dragon, .fairy]
            case .steel:
                return [.fighting, .ghost, .water, .electric, .psychic, .dark]
            case .fairy:
                return [.normal, .flying, .poison, .rock, .ghost, .fire, .water, .electric, .ice]
            }
        }
    }
    
    var doubleDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.ground, .psychic]
            case .fire:
                return [.rock, .water, .psychic]
            case .water:
                return [.ground, .electric, .psychic]
            case .electric:
                return [.psychic]
            case .grass:
                return [.flying, .fire, .psychic, .ice]
            case .ice:
                return [.ground, .rock, .steel, .fire, .psychic]
            case .fighting:
                return [.flying, .ground]
            case .poison:
                return [.ground, .psychic]
            case .ground:
                return [.normal, .flying, .ghost, .steel, .fire, .grass, .dragon, .dark]
            case .flying:
                return [.rock, .electric, .psychic, .ice]
            case .psychic:
                return [.ground, .ghost, .dark]
            case .bug:
                return [.flying, .rock, .fire, .psychic]
            case .rock:
                return [.steel, .water, .psychic]
            case .ghost:
                return [.ground, .ghost, .psychic, .dark]
            case .dragon:
                return [.ground, .psychic, .ice, .dragon]
            case .dark:
                return [.ground]
            case .steel:
                return [.fire]
            case .fairy:
                return [.ground, .steel, .psychic]
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
                return [.ground]
            case .grass:
                return []
            case .ice:
                return []
            case .fighting:
                return [.psychic]
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
