//
//  PokemonType.swift
//  
//
//  Created by Marcos Morais on 28/07/22.
//

import Foundation

enum PokemonType: Int, RawRepresentable, CaseIterable {
    
    case normal
    case fire
    case water
    case electric
    case grass
    case ice
    case fighting
    case poison
    case ground
    case flying
    case psychic
    case bug
    case rock
    case ghost
    case dragon
    case dark
    case steel
    case fairy
    
    var localizedTitle: String {
        switch self {
        case .normal:
            return String(localized: "Normal")
        case .fire:
            return String(localized: "Fire")
        case .bug:
            return String(localized: "Bug")
        case .dark:
            return String(localized: "Dark")
        case .dragon:
            return String(localized: "Dragon")
        case .electric:
            return String(localized: "Electric")
        case .fairy:
            return String(localized: "Fairy")
        case .fighting:
            return String(localized: "Fighting")
        case .flying:
            return String(localized: "Flying")
        case .ghost:
            return String(localized: "Ghost")
        case .grass:
            return String(localized: "Grass")
        case .ground:
            return String(localized: "Ground")
        case .ice:
            return String(localized: "Ice")
        case .poison:
            return String(localized: "Poison")
        case .psychic:
            return String(localized: "Psychic")
        case .rock:
            return String(localized: "Rock")
        case .steel:
            return String(localized: "Steel")
        case .water:
            return String(localized: "Water")
        }
    }
    
}
