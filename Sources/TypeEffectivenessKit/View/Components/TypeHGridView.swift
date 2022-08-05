//
//  File.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import SwiftUI

/**
 A horizontal grid view that places SelectableTypeViews as GridItems. All items are flexible.
 */
struct TypeHGridView: View {
    
    /// A binding to the currently selectedType on the hierarchy (can be firstType, secondType or moveType).
    @Binding var selectedType: PokemonType
    
    /// A ViewModel to compose and use business logic to do certain functionalities outside the view-side.
    @StateObject var typeViewModel: TypeViewModel
    
    /// The rows that will compose our LazyHGrid.
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
                        SelectableTypeView(pokemonType: pokemonType, selectedType: $selectedType, onSelect: $typeViewModel.onSelect)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: 72.5)
                .padding()
            }
        }
        .padding([.top], 17.5)
        .background {
            RoundedRectangle(cornerRadius: Common.roundedRectangleCornerRadius)
                .fillGradientOpacityAndShadow(using: [.purple, .cyan])
        }
        .padding([.trailing, .leading], 10)
    }
}

struct TypeHGridView_Previews: PreviewProvider {
    static var previews: some View {
        TypeHGridView(selectedType: .constant(.normal), typeViewModel: TypeViewModel())
    }
}
