//
//  TypeView.swift
//  
//
//  Created by Marcos Morais on 29/07/22.
//

import SwiftUI

struct TypeView: View {
    
    @State var pokemonType: PokemonType = .fire
    
    var body: some View {
        RoundedRectangle(cornerRadius: 5)
            .fill(LinearGradient(colors: pokemonType.colorGradient, startPoint: .topLeading, endPoint: .bottomTrailing))
            .overlay {
                Text(pokemonType.localizedTitle)
                    .font(.system(.headline, design: .rounded))
                    .minimumScaleFactor(0.25)
                    .foregroundColor(.white)
            }
            .shadow(radius: 2)
            .frame(minWidth: 80, minHeight: 30)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TypeView()
    }
}
