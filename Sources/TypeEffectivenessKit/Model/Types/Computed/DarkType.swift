//
//  DarkType.swift
//  
//
//  Created by Marcos Morais on 29/07/22.
//

import Foundation

struct Dark: TypeWeaknessable {
    
    var type: PokemonType {
        return .dark
    }
    
    var noDamageFrom: [PokemonType] {
        return [.psychic]
    }
    
    var halfDamageFrom: [PokemonType] {
        return [.ghost, .dark]
    }
    
    var normalDamageFrom: [PokemonType] {
        return [.normal, .flying, .poison, .ground, .rock, .steel, .fire, .water, .grass, .electric, .ice, .dragon]
    }
    
    var doubleDamageFrom: [PokemonType] {
        return [.fighting, .bug, .fairy]
    }
    
}

enum DarkType: TypeConformable {
    
    case secondType(type: PokemonType)
    
    var noDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.ghost, .psychic]
            case .fire:
                return [.psychic]
            case .water:
                return [.psychic]
            case .electric:
                return [.psychic]
            case .grass:
                return [.psychic]
            case .ice:
                return [.psychic]
            case .fighting:
                return [.psychic]
            case .poison:
                return [.psychic]
            case .ground:
                return [.psychic, .electric]
            case .flying:
                return [.psychic, .ground]
            case .psychic:
                return [.psychic]
            case .bug:
                return [.psychic]
            case .rock:
                return [.psychic]
            case .ghost:
                return [.psychic, .fighting, .normal]
            case .dragon:
                return [.psychic]
            case .dark:
                return [.psychic]
            case .steel:
                return [.psychic, .poison]
            case .fairy:
                return [.psychic, .dragon]
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
                return [.dark]
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
                return []
            case .fairy:
                return [.dark]
            }
        }
    }
    
    var halfDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.dark]
            case .fire:
                return [.ghost, .steel, .fire, .grass, .ice, .dark]
            case .water:
                return [.ghost, .steel, .fire, .water, .ice, .dark]
            case .electric:
                return [.flying, .ghost, .steel, .electric, .dark]
            case .grass:
                return [.ground, .ghost, .water, .grass, .electric, .dark]
            case .ice:
                return [.ghost, .ice, .dark]
            case .fighting:
                return [.rock, .ghost]
            case .poison:
                return [.poison, .ghost, .grass, .dark]
            case .ground:
                return [.poison, .rock, .ghost, .dark]
            case .flying:
                return [.ghost, .grass, .dark]
            case .psychic:
                return []
            case .bug:
                return [.ground, .ghost, .grass, .dark]
            case .rock:
                return [.normal, .flying, .poison, .ghost, .fire, .dark]
            case .ghost:
                return [.poison]
            case .dragon:
                return [.ghost, .fire, .water, .grass, .electric, .dark]
            case .dark:
                return [.ghost, .dark]
            case .steel:
                return [.normal, .flying, .rock, .ghost, .steel, .grass, .ice, .dragon, .dark]
            case .fairy:
                return [.ghost]
            }
        }
    }
    
    var normalDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.normal, .flying, .poison, .ground, .rock, .steel, .fire, .water, .grass, .electric, .ice, .dragon]
            case .fire:
                return [.normal, .flying, .poison, .bug, .electric, .dragon, .fairy]
            case .water:
                return [.normal, .flying, .poison, .ground, .rock, .dragon]
            case .electric:
                return [.normal, .poison, .rock, .fire, .water, .grass, .ice, .dragon]
            case .grass:
                return [.normal, .rock, .steel, .dragon]
            case .ice:
                return [.normal, .flying, .poison, .ground, .water, .grass, .electric, .dragon]
            case .fighting:
                return [.normal, .poison, .ground, .bug, .steel, .fire, .water, .grass, .electric, .ice, .dragon]
            case .poison:
                return [.normal, .fighting, .flying, .rock, .bug, .steel, .fire, .water, .electric, .ice, .dragon, .fairy]
            case .ground:
                return [.normal, .flying, .ground, .steel, .fire, .dragon]
            case .flying:
                return [.normal, .fighting, .flying, .poison, .bug, .steel, .fire, .water, .dragon]
            case .psychic:
                return [.normal, .fighting, .flying, .poison, .ground, .rock, .ghost, .steel, .fire, .water, .grass, .electric, .ice, .dragon, .dark]
            case .bug:
                return [.normal, .fighting, .poison, .steel, .water, .electric, .ice, .dragon]
            case .rock:
                return [.rock, .electric, .ice, .dragon]
            case .ghost:
                return [.flying, .ground, .rock, .bug, .ghost, .steel, .fire, .water, .grass, .electric, .ice, .dragon, .dark]
            case .dragon:
                return [.normal, .flying, .poison, .ground, .rock, .steel]
            case .dark:
                return [.normal, .flying, .poison, .ground, .rock, .steel, .fire, .water, .grass, .electric, .ice, .dragon]
            case .steel:
                return [.bug, .electric, .water, .fairy]
            case .fairy:
                return [.normal, .fighting, .flying, .ground, .rock, .bug, .fire, .water, .grass, .electric, .ice]
            }
        }
    }
    
    var doubleDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.bug, .fairy]
            case .fire:
                return [.fighting, .ground, .rock, .water]
            case .water:
                return [.fighting, .bug, .grass, .electric, .fairy]
            case .electric:
                return [.fighting, .ground, .bug, .fairy]
            case .grass:
                return [.fighting, .flying, .poison, .fire, .ice, .fairy]
            case .ice:
                return [.rock, .bug, .steel, .fire, .fairy]
            case .fighting:
                return [.fighting, .flying]
            case .poison:
                return [.ground]
            case .ground:
                return [.fighting, .bug, .water, .grass, .ice, .fairy]
            case .flying:
                return [.rock, .electric, .ice, .fairy]
            case .psychic:
                return [.fairy]
            case .bug:
                return [.flying, .rock, .bug, .fire, .fairy]
            case .rock:
                return [.ground, .bug, .steel, .water, .grass, .fairy]
            case .ghost:
                return [.fairy]
            case .dragon:
                return [.fighting, .bug, .ice, .dragon]
            case .dark:
                return [.fighting, .bug, .fairy]
            case .steel:
                return [.ground, .fire]
            case .fairy:
                return [.poison, .steel, .fairy]
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
                return []
            case .water:
                return []
            case .electric:
                return []
            case .grass:
                return [.bug]
            case .ice:
                return [.fighting]
            case .fighting:
                return [.fairy]
            case .poison:
                return []
            case .ground:
                return []
            case .flying:
                return []
            case .psychic:
                return [.bug]
            case .bug:
                return []
            case .rock:
                return [.fighting]
            case .ghost:
                return []
            case .dragon:
                return [.fairy]
            case .dark:
                return []
            case .steel:
                return [.fighting]
            case .fairy:
                return []
            }
        }
    }
    
}
