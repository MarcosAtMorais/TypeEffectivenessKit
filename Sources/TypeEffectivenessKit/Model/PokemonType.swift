//
//  PokemonType.swift
//  
//
//  Created by Marcos Morais on 28/07/22.
//

import Foundation
import SwiftUI

public enum PokemonType: Int, RawRepresentable, CaseIterable {
    
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
    
    /// The Localized Title for each Pokemon Type.
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
    
    /// A TypeWeaknessable that maps all weaknesses given a case of this enum (PokemonType)
    var weakness: TypeWeaknessable {
        
        switch self {
        case .normal:
            return NormalWeakness.default
        case .fire:
            return FireWeakness.default
        case .water:
            return WaterWeakness.default
        case .electric:
            return ElectricWeakness.default
        case .grass:
            return GrassWeakness.default
        case .ice:
            return IceWeakness.default
        case .fighting:
            return FightingWeakness.default
        case .poison:
            return PoisonWeakness.default
        case .ground:
            return GroundWeakness.default
        case .flying:
            return FlyingWeakness.default
        case .psychic:
            return PsychicWeakness.default
        case .bug:
            return BugWeakness.default
        case .rock:
            return RockWeakness.default
        case .ghost:
            return GhostWeakness.default
        case .dragon:
            return DragonWeakness.default
        case .dark:
            return DarkWeakness.default
        case .steel:
            return SteelWeakness.default
        case .fairy:
            return FairyWeakness.default
        }
        
    }
    
    /// A gradient that represents the current case of this enum according to the PokemonType.
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
    
    /// An image that represents the current case of this enum according to the PokemonType.
    var image: String {
        switch self {
        case .normal:
            return String("Normal_icon_LA")
        case .fire:
            return String("Fire_icon_LA")
        case .water:
            return String("Water_icon_LA")
        case .electric:
            return String("Electric_icon_LA")
        case .grass:
            return String("Grass_icon_LA")
        case .ice:
            return String("Ice_icon_LA")
        case .fighting:
            return String("Fighting_icon_LA")
        case .poison:
            return String("Poison_icon_LA")
        case .ground:
            return String("Ground_icon_LA")
        case .flying:
            return String("Flying_icon_LA")
        case .psychic:
            return String("Psychic_icon_LA")
        case .bug:
            return String("Bug_icon_LA")
        case .rock:
            return String("Rock_icon_LA")
        case .ghost:
            return String("Ghost_icon_LA")
        case .dragon:
            return String("Dragon_icon_LA")
        case .dark:
            return String("Dark_icon_LA")
        case .steel:
            return String("Steel_icon_LA")
        case .fairy:
            return String("Fairy_icon_LA")
        }
    }
    
    /**
     Checks the effectiveness of a Pokemon Move Type according to the current type (case of this enum) and the other type it has (secondaryType). If it's the same type (primary and secondary), it is treated as a single type.
     
     - parameters:
        - otherType: The secondary type of the Pokemon. (Treating as a DualType, but if it's the same type (primary and secondary), it is treated as a single type).
        - offensiveType: The move type that is going to be checked for Effectiveness against this enum case and the otherType (primary and secondary Pokemon types).
     - returns: An Effectiveness accordingly.
     */
    func checkDualTypeEffectiveness(otherType: PokemonType, offensiveType: PokemonType) -> Effectiveness {
        
        let thisTypeWeakness: TypeWeaknessable = weakness
        let otherTypeWeakness: TypeWeaknessable = otherType.weakness
        
        let firstTypeEffectiveness = thisTypeWeakness.checkEffectiveness(offensiveType: offensiveType)
        let secondTypeEffectiveness = otherTypeWeakness.checkEffectiveness(offensiveType: offensiveType)
        
        switch firstTypeEffectiveness {
        case .notLocated:
            return .notLocated
        case .noEffect:
            switch secondTypeEffectiveness {
            case .notLocated:
                return .notLocated
            case .noEffect:
                return .noEffect
            case .notVeryEffective:
                return .noEffect
            case .effective:
                return .noEffect
            case .superEffective:
                return .noEffect
            }
        case .notVeryEffective:
            switch secondTypeEffectiveness {
            case .notLocated:
                return .notLocated
            case .noEffect:
                return .noEffect
            case .notVeryEffective:
                return self != otherType ? .barelyEffective : .notVeryEffective
            case .effective:
                return .notVeryEffective
            case .superEffective:
                return .effective
            }
        case .effective:
            switch secondTypeEffectiveness {
            case .notLocated:
                return .notLocated
            case .noEffect:
                return .noEffect
            case .notVeryEffective:
                return .notVeryEffective
            case .effective:
                return .effective
            case .superEffective:
                return .superEffective
            }
        case .superEffective:
            switch secondTypeEffectiveness {
            case .notLocated:
                return .notLocated
            case .noEffect:
                return .noEffect
            case .notVeryEffective:
                return .effective
            case .effective:
                return .superEffective
            case .superEffective:
                return self != otherType ? .ultraEffective : .superEffective
            }
        }
        
    }
    
}
