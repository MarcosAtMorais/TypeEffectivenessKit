//
//  SwiftUIView.swift
//  
//
//  Created by Marcos Morais on 29/07/22.
//

import SwiftUI

/**
 A SwiftUI View container that provides two TypeViews (with no selection actions) given two PokemonTypes. If both are the same type, the view hides with animation the secondary type.
 
 - parameters:
    - firstType: PokemonType that will be the primary type.
    - secondType: PokemonType that will be the secondary type.
 
 - returns:
    - A container view with two TypeViews.
 */
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
