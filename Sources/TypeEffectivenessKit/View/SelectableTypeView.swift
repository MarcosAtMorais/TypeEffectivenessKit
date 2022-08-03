//
//  SwiftUIView.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import SwiftUI

struct SelectableTypeView: View {
    
    @State var pokemonType: PokemonType = .fire
    @Binding var selectedType: PokemonType
    
    var selected: Bool {
        pokemonType == selectedType
    }
    
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
            .frame(minWidth: 80, maxHeight: 30)
            .opacity(selected ? 1.0 : 0.25)
    }
    
}

struct SelectableTypeView_Previews: PreviewProvider {
    static var previews: some View {
        SelectableTypeView(selectedType: .constant(.fire))
    }
}
