//
//  SwiftUIView.swift
//  
//
//  Created by Marcos Morais on 29/07/22.
//

import SwiftUI

struct DualTypeView: View {
    
    @Binding var pokemonType: PokemonType
    @Binding var secondType: PokemonType
    
    var body: some View {
        HStack {
            TypeView(pokemonType: $pokemonType)
            Spacer().frame(maxWidth: 5)
            TypeView(pokemonType: $secondType)
        }

    }
}

struct DualTypeView_Previews: PreviewProvider {
    static var previews: some View {
        DualTypeView(pokemonType: .constant(.fire), secondType: .constant(.ghost))
    }
}
