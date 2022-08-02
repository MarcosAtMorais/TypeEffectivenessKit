//
//  FairyType.swift
//  
//
//  Created by Marcos Morais on 29/07/22.
//

import Foundation

struct Fairy: TypeWeaknessable {
    
    var type: PokemonType {
        return .fairy
    }
    
    var noDamageFrom: [PokemonType] {
        return [.dragon]
    }
    
    var halfDamageFrom: [PokemonType] {
        return [.fighting, .bug, .dark]
    }
    
    var normalDamageFrom: [PokemonType] {
        return [.normal, .flying, .ground, .rock, .ghost, .fire, .water, .grass, .electric, .ice, .psychic, .fairy]
    }
    
    var doubleDamageFrom: [PokemonType] {
        return [.poison, .steel]
    }
    
}

enum FairyType: TypeConformable {
    
    case secondType(type: PokemonType)
    
    var noDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.ghost, .dragon]
            case .fire:
                return [.dragon]
            case .water:
                return [.dragon]
            case .electric:
                return [.dragon]
            case .grass:
                return [.dragon]
            case .ice:
                return [.dragon]
            case .fighting:
                return [.dragon]
            case .poison:
                return [.dragon]
            case .ground:
                return [.dragon, .electric]
            case .flying:
                return [.dragon, .ground]
            case .psychic:
                return [.dragon]
            case .bug:
                return [.dragon]
            case .rock:
                return [.dragon]
            case .ghost:
                return [.dragon, .normal, .fighting]
            case .dragon:
                return [.dragon]
            case .dark:
                return [.dragon, .psychic]
            case .steel:
                return [.dragon, .poison]
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
                return [.bug]
            case .water:
                return []
            case .electric:
                return []
            case .grass:
                return []
            case .ice:
                return []
            case .fighting:
                return [.bug, .dark]
            case .poison:
                return [.fighting, .bug]
            case .ground:
                return []
            case .flying:
                return [.fighting, .bug]
            case .psychic:
                return [.fighting]
            case .bug:
                return [.fighting]
            case .rock:
                return []
            case .ghost:
                return [.bug]
            case .dragon:
                return []
            case .dark:
                return [.dark]
            case .steel:
                return [.bug]
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
                return [.bug, .dark]
            case .fire:
                return [.fighting, .fire, .grass, .ice, .dark, .fairy]
            case .water:
                return [.fighting, .bug, .fire, .water, .ice, .dark]
            case .electric:
                return [.fighting, .flying, .bug, .electric, .dark]
            case .grass:
                return [.fighting, .grass, .ground, .water, .electric, .dark]
            case .ice:
                return [.bug, .ice, .dark]
            case .fighting:
                return [.fighting, .rock]
            case .poison:
                return [.grass, .dark, .fairy]
            case .ground:
                return [.fighting, .rock, .bug ,.dark]
            case .flying:
                return [.grass, .dark]
            case .psychic:
                return [.psychic]
            case .bug:
                return [.ground, .bug, .grass, .dark]
            case .rock:
                return [.normal, .flying, .bug, .fire, .dark]
            case .ghost:
                return []
            case .dragon:
                return [.fighting, .bug, .fire, .water, .grass, .electric, .dark]
            case .dark:
                return [.ghost]
            case .steel:
                return [.normal, .flying, .rock, .grass, .psychic, .ice, .dark, .fairy]
            case .fairy:
                return [.fighting, .bug ,.dark]
            }
        }
    }
    
    var normalDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.normal, .fighting, .flying, .ground, .rock, .fire, .water, .grass, .electric, .psychic, .ice, .fairy]
            case .fire:
                return [.normal, .flying, .ghost, .steel, .electric, .psychic]
            case .water:
                return [.normal, .flying, .ground, .rock, .ghost ,.steel, .psychic, .fairy]
            case .electric:
                return [.normal, .rock, .ghost, .steel, .fire, .water, .grass, .psychic, .ice, .fairy]
            case .grass:
                return [.normal, .rock, .bug, .ghost, .psychic, .fairy]
            case .ice:
                return [.normal, .fighting, .flying, .ground, .ghost, .water, .grass, .electric, .psychic, .fairy]
            case .fighting:
                return [.normal, .ground, .ghost, .fire, .water, .grass, .electric, .ice]
            case .poison:
                return [.normal, .flying, .poison, .rock, .ghost, .fire, .water, .electric, .ice]
            case .ground:
                return [.normal, .flying, .poison, .ground, .ghost, .fire, .psychic, .fairy]
            case .flying:
                return [.normal, .flying, .ghost, .fire, .water, .psychic, .fairy]
            case .psychic:
                return [.normal, .flying, .ground, .rock, .bug, .fire, .water, .grass, .electric, .ice, .dark, .fairy]
            case .bug:
                return [.normal, .ghost, .water, .electric, .psychic, .ice, .fairy]
            case .rock:
                return [.fighting, .poison, .rock, .ghost, .electric, .psychic, .ice, .fairy]
            case .ghost:
                return [.flying, .poison, .ground, .rock, .fire, .water, .grass, .electric, .psychic, .ice, .dark, .fairy]
            case .dragon:
                return [.normal, .flying, .ground, .rock, .ghost, .psychic]
            case .dark:
                return [.normal, .fighting, .flying, .ground, .rock, .bug, .fire, .water, .grass, .electric, .ice]
            case .steel:
                return [.fighting, .ghost, .steel, .water, .electric]
            case .fairy:
                return [.normal, .flying, .ground, .rock, .ghost, .fire, .water, .grass, .electric, .psychic, .ice, .fairy]
            }
        }
    }
    
    var doubleDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.poison, .steel]
            case .fire:
                return [.poison, .ground, .rock, .water]
            case .water:
                return [.poison, .grass, .electric]
            case .electric:
                return [.poison, .ground]
            case .grass:
                return [.flying, .steel, .fire, .ice]
            case .ice:
                return [.poison, .rock, .fire]
            case .fighting:
                return [.flying, .poison, .steel, .psychic, .fairy]
            case .poison:
                return [.ground, .steel, .psychic]
            case .ground:
                return [.steel, .water, .grass, .ice]
            case .flying:
                return [.poison, .rock, .steel, .electric, .ice]
            case .psychic:
                return [.poison, .ghost, .steel]
            case .bug:
                return [.flying, .poison, .rock, .steel, .fire]
            case .rock:
                return [.ground, .water, .grass]
            case .ghost:
                return [.ghost, .steel]
            case .dragon:
                return [.poison, .steel, .ice, .fairy]
            case .dark:
                return [.poison, .steel, .fairy]
            case .steel:
                return [.ground, .fire]
            case .fairy:
                return [.poison, .steel]
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
                return [.poison]
            case .ice:
                return [.steel]
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
                return [.steel]
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
