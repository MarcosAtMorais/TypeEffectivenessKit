//
//  File.swift
//  
//
//  Created by Marcos Morais on 28/07/22.
//

import Foundation

struct DualType {
    
    var firstType: TypeWeaknessable
    var secondType: TypeWeaknessable
    
    public func fetchTypeEffectivenessAccordingTo(_ damageType: PokemonType) -> Effectiveness {
        return firstType.checkDualTypeEffectiveness(otherType: secondType, offensiveType: damageType)
    }
    
}

struct DualTypeConformable {
    
    static public func fetchPokemonType(firstType: PokemonType, secondType: PokemonType) -> TypeConformable {
        
        switch firstType {
        case .normal:
            return NormalType.secondType(type: secondType)
        case .fire:
            return FireType.secondType(type: secondType)
        case .water:
            return WaterType.secondType(type: secondType)
        case .electric:
            return ElectricType.secondType(type: secondType)
        case .grass:
            return GrassType.secondType(type: secondType)
        case .ice:
            return IceType.secondType(type: secondType)
        case .fighting:
            return FightingType.secondType(type: secondType)
        case .poison:
            return PoisonType.secondType(type: secondType)
        case .ground:
            return GroundType.secondType(type: secondType)
        case .flying:
            return FlyingType.secondType(type: secondType)
        case .psychic:
            return PsychicType.secondType(type: secondType)
        case .bug:
            return BugType.secondType(type: secondType)
        case .rock:
            return RockType.secondType(type: secondType)
        case .ghost:
            return GhostType.secondType(type: secondType)
        case .dragon:
            return DragonType.secondType(type: secondType)
        case .dark:
            return DarkType.secondType(type: secondType)
        case .steel:
            return SteelType.secondType(type: secondType)
        case .fairy:
            return FairyType.secondType(type: secondType)
        }
        
    }
    
    static public func fetchPokemonType(singleType: PokemonType) -> TypeConformable {
        
        let secondType = singleType
        
        switch singleType {
        case .normal:
            return NormalType.secondType(type: secondType)
        case .fire:
            return FireType.secondType(type: secondType)
        case .water:
            return WaterType.secondType(type: secondType)
        case .electric:
            return ElectricType.secondType(type: secondType)
        case .grass:
            return GrassType.secondType(type: secondType)
        case .ice:
            return IceType.secondType(type: secondType)
        case .fighting:
            return FightingType.secondType(type: secondType)
        case .poison:
            return PoisonType.secondType(type: secondType)
        case .ground:
            return GroundType.secondType(type: secondType)
        case .flying:
            return FlyingType.secondType(type: secondType)
        case .psychic:
            return PsychicType.secondType(type: secondType)
        case .bug:
            return BugType.secondType(type: secondType)
        case .rock:
            return RockType.secondType(type: secondType)
        case .ghost:
            return GhostType.secondType(type: secondType)
        case .dragon:
            return DragonType.secondType(type: secondType)
        case .dark:
            return DarkType.secondType(type: secondType)
        case .steel:
            return SteelType.secondType(type: secondType)
        case .fairy:
            return FairyType.secondType(type: secondType)
        }
        
    }
    
}
