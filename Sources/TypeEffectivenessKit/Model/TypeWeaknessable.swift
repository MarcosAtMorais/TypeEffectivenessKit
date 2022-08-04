//
//  File.swift
//  
//
//  Created by Marcos Morais on 02/08/22.
//

import Foundation

protocol TypeWeaknessable {
    
    /// The PokemonType associated with the TypeWekanessable. This type includes everything a regular PokemonType has to offer.
    var type: PokemonType { get }
    
    /// A default implementation of TypeWeaknessable for previews and tests.
    static var `default`: TypeWeaknessable { get }
    
    /**
     This variable is responsible to organize and enumerate all PokemonTypes that have a *noEffect* damage weakness.
     */
    var noDamageFrom: [PokemonType] { get }
    /**
     This variable is responsible to organize and enumerate all PokemonTypes that have a *notVeryEffective* damage weakness.
     */
    var halfDamageFrom: [PokemonType] { get }
    /**
     This variable is responsible to organize and enumerate all PokemonTypes that have a *effective* damage weakness.
     */
    var normalDamageFrom: [PokemonType] { get }
    /**
     This variable is responsible to organize and enumerate all PokemonTypes that have a *superEffective* damage weakness.
     */
    var doubleDamageFrom: [PokemonType] { get }
    
    /**
     This is used to check the effectiveness of a PokemonType move (single-type) with the type associated with this TypeWeakness.
     
     - parameters:
        - offensiveType: the move type that is going to be verifyied with the type variable of this TypeWeaknessable.
     - returns:
        - A SingleTypeEffectiveness that can be used independently or with Effectiveness as a DualType checking.
     */
    func checkEffectiveness(offensiveType: PokemonType) -> SingleTypeEffectiveness
    
}
