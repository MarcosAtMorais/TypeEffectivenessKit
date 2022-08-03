//
//  File.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import SwiftUI

struct TypeHGridView: View {
    
    @Binding var selectedType: PokemonType
    @State var onSelect: (PokemonType) -> () = { _ in }
    
    let rows = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows, spacing: 10) {
                ForEach(PokemonType.allCases, id: \.self) { pokemonType in
                    SelectableTypeView(pokemonType: pokemonType, selectedType: $selectedType)
                        .onTapGesture {
                            selectedType = pokemonType
                            _ = onSelect(pokemonType)
                        }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: 72.5)
            .padding()

        }
    }
}

struct TypeHGridView_Previews: PreviewProvider {
    static var previews: some View {
        TypeHGridView(selectedType: .constant(.normal))
    }
}
