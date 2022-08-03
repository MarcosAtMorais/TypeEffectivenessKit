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
            HStack {
                Text(typeViewModel.title)
                    .font((.system(.headline, design: .rounded)))
                    .foregroundColor(.primary)
                    .padding([.all], 5.5)
                    .background {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(LinearGradient(colors: [.pink, .purple], startPoint: .topLeading, endPoint: .bottomTrailing))
                            .opacity(0.45)
                            .shadow(radius: 2)
                    }
                Spacer()
            }
            .padding([.leading, .trailing], 15)
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
                .fill(LinearGradient(colors: [.purple, .cyan], startPoint: .topLeading, endPoint: .bottomTrailing))
                .opacity(0.25)
                .shadow(radius: 2)
        }
    }
}

struct TypeHGridView_Previews: PreviewProvider {
    static var previews: some View {
        TypeHGridView(selectedType: .constant(.normal), typeViewModel: TypeViewModel())
    }
}
