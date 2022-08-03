//
//  File.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import SwiftUI

struct TypeHGridView: View {
    
    @Binding var selectedType: PokemonType
    @StateObject var typeViewModel: TypeViewModel
    
    let rows = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        VStack {
            TypeHGridTitleView(title: $typeViewModel.title)
            ScrollView(.horizontal) {
                LazyHGrid(rows: rows, spacing: 10) {
                    ForEach(PokemonType.allCases, id: \.self) { pokemonType in
                        SelectableTypeView(pokemonType: pokemonType, selectedType: $selectedType)
                            .onTapGesture {
                                withAnimation {
                                    selectedType = pokemonType
                                    _ = typeViewModel.onSelect(pokemonType)
                                }
                            }
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: 72.5)
                .padding()
            }
        }
        .padding([.top], 17.5)
        .background {
            RoundedRectangle(cornerRadius: 10)
                .fillGradientOpacityAndShadow(using: [.purple, .cyan])
        }
    }
}

struct TypeHGridView_Previews: PreviewProvider {
    static var previews: some View {
        TypeHGridView(selectedType: .constant(.normal), typeViewModel: TypeViewModel())
    }
}
