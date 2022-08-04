//
//  File.swift
//  
//
//  Created by Marcos Morais on 28/07/22.
//

import Foundation

protocol TypeConformable {

    /**
     This variable is responsible to organize and enumerate all PokemonTypes that have a *noEffect* damage weakness.
     */
    var noDamageFrom: [PokemonType] { get }
    /**
     This variable is responsible to organize and enumerate all PokemonTypes that have a *barelyEffective* damage weakness.
     */
    var oneFourthDamageFrom: [PokemonType] { get }
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
     This variable is responsible to organize and enumerate all PokemonTypes that have a *ultraEffective* damage weakness.
     */
    var quadrupleDamageFrom: [PokemonType] { get }
    
    /**
     This is used to check the effectiveness of a PokemonType move (single-type) with the type associated with this TypeWeakness.
     
     - parameters:
        - offensiveType: the move type that is going to be verifyied with the type variable of this TypeWeaknessable.
     - returns: A Effectiveness that can be used independently.
     */
    func checkDamage(offensiveType: PokemonType) -> Effectiveness

}
