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
 
 - returns: A container view with two TypeViews.
 */
public struct DualTypeView: View {
    
    /// The first type that will compose the view. This is the Primary Type.
    @Binding var firstType: PokemonType
    
    /// The second type that will compose the view. This is the Secondary Type.
    @Binding var secondType: PokemonType
    
    /// Checks if the types are different. If so, render the secondType.
    var differentTypes: Bool {
        firstType != secondType
    }
    
    public var body: some View {
        HStack {
            TypeView(pokemonType: $firstType)
            if differentTypes {
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
