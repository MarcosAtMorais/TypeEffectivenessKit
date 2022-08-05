//
//  File.swift
//  
//
//  Created by Marcos Morais on 28/07/22.
//

import Foundation

public struct DualType {
    
    // MARK: - Properties
    
    /// The First Type of the Pokemon
    var firstType: PokemonType
    /// The Second Type of the Pokemon
    var secondType: PokemonType
    
    // MARK: - Initializers
    
    public init(firstType: PokemonType, secondType: PokemonType) {
        self.firstType = firstType
        self.secondType = secondType
    }
    
    // MARK: - Effectiveness Methods

    /**
     Fetches the type effectiveness according to the damageType (PokemonType) provided and returns an effectiveness.
     
     - parameters:
        - damageType: The PokemonType for the Move chosen.
     - returns: The effectiveness according to the Pokemon Dual Type and the damageType provided.
     */
    public func fetchTypeEffectivenessAccordingTo(_ damageType: PokemonType) -> Effectiveness {
        return firstType.checkDualTypeEffectiveness(otherType: secondType, offensiveType: damageType)
    }
    
}
