//
//  File.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

public struct FairyWeakness: TypeWeaknessable {
    
    public static var `default`: TypeWeaknessable {
        return FairyWeakness()
    }
    
    public var type: PokemonType {
        return .fairy
    }
    
    public var noDamageFrom: [PokemonType] {
        return [.dragon]
    }
    
    public var halfDamageFrom: [PokemonType] {
        return [.fighting, .bug, .dark]
    }
    
    public var normalDamageFrom: [PokemonType] {
        return [.normal, .flying, .ground, .rock, .ghost, .fire, .water, .grass, .electric, .ice, .psychic, .fairy]
    }
    
    public var doubleDamageFrom: [PokemonType] {
        return [.poison, .steel]
    }
    
}
