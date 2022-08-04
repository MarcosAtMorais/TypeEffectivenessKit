//
//  SwiftUIView.swift
//  
//
//  Created by Marcos Morais on 04/08/22.
//

import SwiftUI

/**
 Simple example that shows how to fetch weaknesses from Pokémon Types.
 */
struct WeaknessDisplayExampleView: View {
    
    // MARK: - Properties
    
    /// Type that you want to check the weaknesses
    @State var pokemonType: PokemonType = .ghost
    
    // MARK: - View
    
    var body: some View {
        VStack {
            List {
                ForEach(listAllHalfDamageWeaknessesFrom(pokemonType), id: \.self) { type in
                    Text(type.localizedTitle)
                }
            }
            // Examples of Effectiveness usage
            Text(checkMoveEffectiveness().localized)
            Text(checkDualTypeMoveEffectiveness().localized)
            Text(checkDualTypeMoveEffectivenessUsingDualType().localized)
        }
    }
    
    private func listAllHalfDamageWeaknessesFrom(_ type: PokemonType) -> [PokemonType] {
        /// Returns 1/2 (half) damage types array
        return type.weakness.halfDamageFrom
    }
    
    /**
    A method that creates a PokemonType, the Move PokemonType, and returns the Effectiveness of it in form of a SingleTypeEffectiveness.
     
     - returns: The effectiveness of the move.
     */
    private func checkMoveEffectiveness() -> SingleTypeEffectiveness {
        
        let pokemonType: PokemonType = .fire
        let moveType: PokemonType = .water
        
        let effectiveness = pokemonType.checkSingleTypeEffectiveness(offensiveType: moveType)
        
        print(effectiveness.localized) // Super Effective
        
        return effectiveness
        
    }
    
    /**
    A method that creates a PokemonType, the second PokemonType and the Move PokemonType, then, it returns the Effectiveness of it in form of Effectiveness (includes Barely Effective (1/4 damage) and Ultra Effective (4x damage).
     
     - returns: The effectiveness of the move.
     */
    private func checkDualTypeMoveEffectiveness() -> Effectiveness {
        
        let pokemonFirstType: PokemonType = .fire
        let pokemonSecondType: PokemonType = .ghost
        let moveType: PokemonType = .grass
        
        let effectiveness = pokemonFirstType.checkDualTypeEffectiveness(otherType: pokemonSecondType, offensiveType: moveType)
        
        print(effectiveness.localized) // Not Very Effective
        
        return effectiveness
        
    }
    
    /**
    A method that creates a DualType using two PokemonTypes and the Move PokemonType, then, it returns the Effectiveness of it in form of Effectiveness (includes Barely Effective (1/4 damage) and Ultra Effective (4x damage).
     
     - returns: The effectiveness of the move.
     */
    private func checkDualTypeMoveEffectivenessUsingDualType() -> Effectiveness {
        
        let pokemonFirstType: PokemonType = .fairy
        let pokemonSecondType: PokemonType = .psychic
        let dualType = DualType(firstType: pokemonFirstType, secondType: pokemonSecondType)
        
        let moveType: PokemonType = .dragon
        
        let effectiveness = dualType.fetchTypeEffectivenessAccordingTo(moveType)
        
        print(effectiveness.localized) // No Effect
        
        return effectiveness
        
    }
    
}

struct WeaknessDisplayExampleView_Previews: PreviewProvider {
    static var previews: some View {
        WeaknessDisplayExampleView()
    }
}
