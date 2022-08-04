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
    
    /// Type that you want to check the weaknesses
    @State var pokemonType: PokemonType = .ghost
    
    var body: some View {
        List {
            ForEach(listAllHalfDamageWeaknessesFrom(pokemonType), id: \.self) { type in
                Text(type.localizedTitle)
            }
        }
    }
    
    private func listAllHalfDamageWeaknessesFrom(_ type: PokemonType) -> [PokemonType] {
        /// Returns 1/2 (half) damage types array
        return type.weakness.halfDamageFrom
    }
}

struct WeaknessDisplayExampleView_Previews: PreviewProvider {
    static var previews: some View {
        WeaknessDisplayExampleView()
    }
}
