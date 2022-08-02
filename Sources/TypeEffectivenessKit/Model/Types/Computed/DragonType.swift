//
//  DragonType.swift
//  
//
//  Created by Marcos Morais on 29/07/22.
//

import Foundation

struct Dragon: TypeWeaknessable {
    
    var type: PokemonType {
        return .dragon
    }
    
    var noDamageFrom: [PokemonType] {
        return []
    }
    
    var halfDamageFrom: [PokemonType] {
        return [.fire, .water, .grass, .electric]
    }
    
    var normalDamageFrom: [PokemonType] {
        return [.normal, .fighting, .flying, .poison, .ground, .rock, .bug, .ghost, .steel, .psychic, .dark]
    }
    
    var doubleDamageFrom: [PokemonType] {
        return [.ice, .dragon, .fairy]
    }
    
}

enum DragonType: TypeConformable {
    
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
                return [.fire, .grass]
            case .water:
                return [.fire, .water]
            case .electric:
                return [.electric]
            case .grass:
                return [.water, .grass, .electric]
            case .ice:
                return []
            case .fighting:
                return []
            case .poison:
                return [.grass]
            case .ground:
                return []
            case .flying:
                return [.grass]
            case .psychic:
                return []
            case .bug:
                return [.grass]
            case .rock:
                return [.fire]
            case .ghost:
                return []
            case .dragon:
                return []
            case .dark:
                return []
            case .steel:
                return [.grass]
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
                return [.fire, .water, .grass, .electric]
            case .fire:
                return [.bug, .steel, .electric]
            case .water:
                return [.steel]
            case .electric:
                return [.flying, .steel, .fire, .water, .grass]
            case .grass:
                return [.ground]
            case .ice:
                return [.water, .grass, .electric]
            case .fighting:
                return [.rock, .bug, .fire, .water, .grass, .electric, .dark]
            case .poison:
                return [.fighting, .poison, .bug, .fire, .water, .electric]
            case .ground:
                return [.poison, .rock, .fire]
            case .flying:
                return [.fighting, .bug, .fire, .water]
            case .psychic:
                return [.fighting, .fire, .water, .grass, .electric, .psychic]
            case .bug:
                return [.fighting, .grass, .water, .electric]
            case .rock:
                return [.normal, .flying, .poison, .electric]
            case .ghost:
                return [.poison, .bug, .fire, .water, .grass, .electric]
            case .dragon:
                return [.fire, .water, .grass, .electric]
            case .dark:
                return [.ghost, .fire, .water, .grass, .electric, .dark]
            case .steel:
                return [.normal, .flying, .rock, .bug, .steel, .water, .electric, .psychic]
            case .fairy:
                return [.fighting, .bug, .fire, .water, .grass, .electric, .dark]
            }
        }
    }
    
    var normalDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.normal, .flying, .poison, .ground, .rock, .bug, .steel, .psychic, .dark]
            case .fire:
                return [.normal, .fighting, .flying, .poison, .ghost, .water, .psychic, .ice, .dark, .fairy]
            case .water:
                return [.normal, .fighting, .flying, .poison, .ground, .rock, .bug, .ghost, .grass, .electric, .psychic, .ice, .dark]
            case .electric:
                return [.normal, .fighting, .poison, .rock, .bug, .ghost, .psychic, .dark]
            case .grass:
                return [.normal, .fighting, .rock, .ghost, .steel, .fire, .psychic, .dark]
            case .ice:
                return [.normal, .flying, .poison, .ground, .bug, .ghost, .fire, .psychic, .ice, .dark]
            case .fighting:
                return [.normal, .fighting, .poison, .ground, .ghost, .steel]
            case .poison:
                return [.normal, .flying, .rock, .ghost, .steel, .dark, .fairy]
            case .ground:
                return [.normal, .fighting, .flying, .ground, .bug, .ghost, .steel, .water, .grass, .psychic, .dark]
            case .flying:
                return [.normal, .flying, .poison, .ghost, .steel, .electric, .psychic, .dark]
            case .psychic:
                return [.normal, .flying, .poison, .ground, .rock, .steel]
            case .bug:
                return [.normal, .poison, .bug, .ghost, .steel, .fire, .psychic, .dark]
            case .rock:
                return [.rock, .bug, .ghost, .water, .grass, .psychic, .dark]
            case .ghost:
                return [.flying, .ground, .rock, .steel, .psychic]
            case .dragon:
                return [.normal, .fighting, .flying, .poison, .ground, .rock, .bug, .ghost, .steel, .psychic, .dark]
            case .dark:
                return [.normal, .flying, .poison, .ground, .rock, .steel]
            case .steel:
                return [.ghost, .fire, .ice, .dragon, .dark, .fairy]
            case .fairy:
                return [.normal, .flying, .ground, .rock, .ghost, .psychic]
            }
        }
    }
    
    var doubleDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.fighting, .ice, .dragon, .fairy]
            case .fire:
                return [.ground, .rock, .dragon]
            case .water:
                return [.dragon, .fairy]
            case .electric:
                return [.ground, .ice, .dragon, .fairy]
            case .grass:
                return [.flying, .poison, .bug, .dragon, .fairy]
            case .ice:
                return [.fighting, .rock, .steel, .dragon, .fairy]
            case .fighting:
                return [.flying, .psychic, .ice, .dragon]
            case .poison:
                return [.ground, .psychic, .ice, .dragon]
            case .ground:
                return [.dragon, .fairy]
            case .flying:
                return [.rock, .dragon, .fairy]
            case .psychic:
                return [.bug, .ghost, .ice, .dragon, .dark, .fairy]
            case .bug:
                return [.flying, .rock, .ice, .dragon, .fairy]
            case .rock:
                return [.fighting, .ground, .steel, .ice, .dragon, .fairy]
            case .ghost:
                return [.ghost, .ice, .dragon, .dark, .fairy]
            case .dragon:
                return [.ice, .dragon, .fairy]
            case .dark:
                return [.fighting, .bug, .ice, .dragon]
            case .steel:
                return [.fighting, .ground]
            case .fairy:
                return [.poison, .steel, .fairy, .ice]
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
                return [.ice]
            case .ice:
                return []
            case .fighting:
                return [.fairy]
            case .poison:
                return []
            case .ground:
                return [.ice]
            case .flying:
                return [.ice]
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
                return [.fairy]
            case .steel:
                return []
            case .fairy:
                return []
            }
        }
    }
    
}
