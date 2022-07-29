//
//  PokemonType.swift
//  
//
//  Created by Marcos Morais on 28/07/22.
//

import Foundation
import SwiftUI

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
    
    var colorGradient: [Color] {
        switch self {
        case .normal:
            return [.gray.opacity(0.75), .gray]
        case .fire:
            return [.red.opacity(0.5), .red]
        case .water:
            return [.blue.opacity(0.5), .blue]
        case .electric:
            return [.yellow.opacity(0.5), .yellow]
        case .grass:
            return [.green.opacity(0.5), .green]
        case .ice:
            return [.teal.opacity(0.5), .teal]
        case .fighting:
            return [.brown.opacity(0.5), .brown]
        case .poison:
            return [.purple.opacity(0.85), .purple]
        case .ground:
            return [.orange.opacity(0.5), .yellow]
        case .flying:
            return [.cyan.opacity(0.5), .cyan]
        case .psychic:
            return [.pink.opacity(0.5), .pink]
        case .bug:
            return [.green.opacity(0.25), .green.opacity(0.5)]
        case .rock:
            return [.yellow.opacity(0.5), .yellow.opacity(0.75)]
        case .ghost:
            return [.purple.opacity(0.85), .purple]
        case .dragon:
            return [.purple.opacity(0.5), .purple]
        case .dark:
            return [.brown.opacity(0.5), .brown]
        case .steel:
            return [.gray.opacity(0.5), .gray]
        case .fairy:
            return [.pink.opacity(0.25), .pink]
        }
    }
    
}
