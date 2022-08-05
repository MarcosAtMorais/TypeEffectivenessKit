//
//  SimplerTypeEffectivenessView.swift
//  
//
//  Created by Marcos Morais on 04/08/22.
//

import SwiftUI

/**
 A simpler example using just the Pokemon Types, DualType and Effectiveness
 */
public struct SimplerTypeEffectivenessView: View {
    
    // MARK: - Properties

    /// Pokémon First Type
    @State var pokemonFirstType: PokemonType = .grass
    /// Pokémon Second Type
    @State var pokemonSecondType: PokemonType = .fire
    /// Pokémon Move (Offensive) Type
    @State var pokemonMoveType: PokemonType = .water
    
    /// Result of the effectiveness check between the Pokémon Type(s) and the Move Type
    var effectivenessResult: Effectiveness {
        self.checkTypeEffectivenessWithDualType(firstType: pokemonFirstType, secondType: pokemonSecondType, moveType: pokemonMoveType)
    }
    
    // MARK: - View

    public var body: some View {
        VStack {
            HStack {
                Text("Pokémon Type")
                    .font(.system(size: 12, weight: .semibold, design: .rounded))
                    .padding([.leading], 10)
                Spacer()
            }
            DualTypeView(firstType: $pokemonFirstType, secondType: $pokemonSecondType)
            Spacer().frame(maxHeight: 25)
            HStack {
                Text("Move Type")
                    .font(.system(size: 12, weight: .semibold, design: .rounded))
                    .padding([.leading], 10)
                Spacer()
            }
            TypeView(pokemonType: $pokemonMoveType)
            Spacer().frame(maxHeight: 25)
            Text("Result: \(checkTypeEffectiveness(firstType: pokemonFirstType, secondType: pokemonSecondType, moveType: pokemonMoveType).localized)")
            Text("or")
                .font(.system(size: 12, weight: .semibold, design: .rounded))
            
            Text(effectivenessResult.localized)
                .fillGradientOpacityAndShadow(using: [.purple, .cyan], opacity: 0.80)
        }
    }
    
    // MARK: - Check Effectiveness Methods
    
    private func checkTypeEffectiveness(firstType: PokemonType, secondType: PokemonType, moveType: PokemonType) -> Effectiveness {
        
        // Checks effectiveness using first type, passing the secondType and offensive type
        let effectiveness = firstType.checkDualTypeEffectiveness(otherType: secondType, offensiveType: moveType)
        
        // Returns the effectiveness (you can use the localizedTitle property of it to display the effectiveness as a string)
        return effectiveness
        
    }
    
    private func checkTypeEffectivenessWithDualType(firstType: PokemonType, secondType: PokemonType, moveType: PokemonType) -> Effectiveness {
        
        // Creates a DualType using the first and second type
        let dualType = DualType(firstType: firstType, secondType: secondType)
        
        // Checks effectiveness using the dual type, passing the offensive type
        let effectiveness = dualType.fetchTypeEffectivenessAccordingTo(moveType)
        
        // Returns the effectiveness (you can use the localizedTitle property of it to display the effectiveness as a string)
        return effectiveness
        
    }
    
}

struct SimplerTypeEffectivenessView_Previews: PreviewProvider {
    static var previews: some View {
        SimplerTypeEffectivenessView()
    }
}
