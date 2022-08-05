//
//  Fire.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

public struct FireWeakness: TypeWeaknessable {
    
    public static var `default`: TypeWeaknessable {
        return FireWeakness()
    }
    
    public var type: PokemonType {
        return .fire
    }
    
    public var noDamageFrom: [PokemonType] {
        return []
    }
    
    public var halfDamageFrom: [PokemonType] {
        return [.bug, .steel, .fire, .grass, .ice, .fairy]
    }
    
    public var normalDamageFrom: [PokemonType] {
        return [.normal, .fighting, .flying, .poison, .ghost, .electric, .psychic, .dragon, .dark]
    }
    
    public var doubleDamageFrom: [PokemonType] {
        return [.ground, .rock, .water]
    }
    
}
