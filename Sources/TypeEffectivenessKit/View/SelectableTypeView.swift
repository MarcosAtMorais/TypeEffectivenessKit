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
            .opacity(selected ? 1.0 : 0.5)
    }
    
}

struct SelectableTypeView_Previews: PreviewProvider {
    static var previews: some View {
        SelectableTypeView(selectedType: .constant(.fire))
    }
}
