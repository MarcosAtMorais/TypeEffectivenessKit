//
//  TypeView.swift
//  
//
//  Created by Marcos Morais on 29/07/22.
//

import SwiftUI

struct TypeView: View {
    
    @Binding var pokemonType: PokemonType
    
    var body: some View {
        RoundedRectangle(cornerRadius: 5)
            .fill(LinearGradient(colors: pokemonType.colorGradient, startPoint: .topLeading, endPoint: .bottomTrailing))
            .overlay {
                HStack {
                    Image(pokemonType.image, bundle: .module)
                        .resizable()
                        .frame(width: 25, height: 25)
                        .padding([.leading], 5)
                    Spacer().frame(maxWidth: 10)
                    Text(pokemonType.localizedTitle)
                        .font(.system(.headline, design: .rounded))
                        .minimumScaleFactor(0.25)
                        .foregroundColor(.white)
                    Spacer()
                }
            }
            .shadow(radius: 2)
            .frame(minWidth: 100, maxHeight: 30)
            .padding([.leading, .trailing], 2.5)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TypeView(pokemonType: .constant(.steel))
    }
}
