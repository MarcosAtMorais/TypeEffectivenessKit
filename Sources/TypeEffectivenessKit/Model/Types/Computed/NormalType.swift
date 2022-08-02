//
//  NormalType.swift
//  
//
//  Created by Marcos Morais on 28/07/22.
//

import Foundation

enum Normal: TypeWeaknessable {
    
    var type: PokemonType {
        return .normal
    }
    
    var noDamageFrom: [PokemonType] {
        return [.ghost]
    }
    
    var halfDamageFrom: [PokemonType] {
        return []
    }
    
    var normalDamageFrom: [PokemonType] {
        return [.normal, .flying, .poison, .ground, .rock, .bug, .steel, .fire, .water, .grass, .electric, .psychic, .ice, .dragon, .dark, .fairy]
    }
    
    var doubleDamageFrom: [PokemonType] {
        return [.fighting]
    }
    
}


enum NormalType: TypeConformable {
    
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
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.normal, .fire, .water, .electric, .ice, .poison, .ground, .flying, .psychic, .bug, .rock, .dragon, .dark, .steel, .fairy]
            case .fire:
                return [.normal, .electric, .poison, .flying, .psychic, .dragon, .dark]
            case .water:
                return [.normal, .poison, .ground, .flying, .psychic, .bug, .rock, .dragon, .dark, .fairy]
            case .electric:
                return [.normal, .fire, .water, .grass, .ice, .poison, .psychic, .bug, .rock, .dragon, .dark, .fairy]
            case .grass:
                return [.normal, .psychic, .rock, .dragon, .dark, .steel, .fairy]
            case .ice:
                return [.normal, .water, .electric, .grass, .poison, .ground, .flying, .psychic, .bug, .rock, .dragon, .dark, .fairy]
            case .fighting:
                return [.normal, .fire, .water, .electric, .grass, .ice, .poison, .ground, .dragon, .steel]
            case .poison:
                return [.normal, .fire, .water, .electric, .ice, .fighting, .flying, .rock, .dragon, .dark, .steel]
            case .ground:
                return [.normal, .fire, .grass, .flying, .psychic, .bug, .dragon, .dark, .steel, .fairy]
            case .flying:
                return [.normal, .fire, .water, .fighting, .poison, .flying, .psychic, .dragon, .dark, .steel, .fairy]
            case .psychic:
                return [.normal, .fire, .water, .electric, .ice, .poison, .fighting, .ground, .flying, .rock, .dragon, .steel, .fairy]
            case .bug:
                return [.normal, . water, .electric, .ice, .fire, .poison, .psychic, .bug, .dragon, .dark, .steel, .fairy]
            case .rock:
                return [.electric, .ice, .psychic, .bug, .rock, .dragon, .dark, .fairy]
            case .ghost:
                return [.fire, .water, .electric, . grass, .ice, .grass, .flying, .psychic, .rock, .dragon, .steel, .fairy]
            case .dragon:
                return [.normal, .poison, .ground, .flying, .psychic, .bug, .rock, .dark, .steel]
            case .dark:
                return [.normal, .fire, .water ,.electric, .grass, .ice, .poison, .ground, .flying, .rock, .dragon, .steel]
            case .steel:
                return [.water, .electric, .dark]
            case .fairy:
                return [.normal, .fire, .water, .electric, .grass, .ice, .fighting, .ground, .flying, .psychic, .rock, .fairy]
            }
        }
    }
    
    var doubleDamageFrom: [PokemonType] {
        switch self {
        case .secondType(let type):
            switch type {
            case .normal:
                return [.fighting]
            case .fire:
                return [.water, .fighting, .ground, .rock]
            case .water:
                return [.electric, .grass, .fighting]
            case .electric:
                return [.fighting, .ground]
            case .grass:
                return [.fire, .ice, .fighting, .poison, .flying, .bug]
            case .ice:
                return [.fire, .rock, .steel]
            case .fighting:
                return [.fighting, .flying, .psychic, .fairy]
            case .poison:
                return [.ground, .psychic]
            case .ground:
                return [.water, .grass, .ice, .fire]
            case .flying:
                return [.electric, .ice, .rock]
            case .psychic:
                return [.bug, .dark]
            case .bug:
                return [.fire, .flying, .rock]
            case .rock:
                return [.water, .grass, .ground]
            case .ghost:
                return [.dark]
            case .dragon:
                return [.ice, .fighting, .dragon, .fairy]
            case .dark:
                return [.bug, .fairy]
            case .steel:
                return [.fire, .ground]
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
