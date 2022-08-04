//
//  SwiftUIView.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import SwiftUI

/**
 A Selectable SwiftUI view that provides information related to the PokemonType. This is Single-Typed and consists of a Button thet has a RoundedRectangle as a Label.
 */
struct SelectableTypeView: View {
    
    /// The PokemonType of the view.
    @State var pokemonType: PokemonType = .fire
    /// A binding to the selectedType in the hierarchy (probably the TypeHGridView -> TypeViewModel).
    @Binding var selectedType: PokemonType
    /// A binding to the onSelect in the hierarchy (probably the TypeHGridView -> TypeViewModel).
    @Binding var onSelect: (PokemonType) -> ()
    
    /// A checking if the type is currently the selected one for updates of the UI.
    var selected: Bool {
        pokemonType == selectedType
    }
    
    var body: some View {
        Button {
            withAnimation {
                self.selectedType = pokemonType
                onSelect(pokemonType)
            }
        } label: {
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
    
}

struct SelectableTypeView_Previews: PreviewProvider {
    static var previews: some View {
        SelectableTypeView(selectedType: .constant(.fire), onSelect: .constant({ _ in }))
    }
}
