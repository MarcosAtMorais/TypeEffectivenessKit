//
//  SwiftUIView.swift
//  
//
//  Created by Marcos Morais on 29/07/22.
//

import SwiftUI

struct DualTypeView: View {
    
    @Binding var firstType: PokemonType
    @Binding var secondType: PokemonType
    
    var body: some View {
        HStack {
            TypeView(pokemonType: $firstType)
            if firstType != secondType {
                Spacer().frame(maxWidth: 5)
                TypeView(pokemonType: $secondType)
            }
        }

    }
}

struct DualTypeView_Previews: PreviewProvider {
    static var previews: some View {
        DualTypeView(firstType: .constant(.fire), secondType: .constant(.ghost))
    }
}
