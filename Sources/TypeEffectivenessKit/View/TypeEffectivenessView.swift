//
//  TypeEffectivenessView.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import SwiftUI

struct TypeEffectivenessView: View {
    
    @State var firstType: PokemonType = .normal
    @State var secondType: PokemonType = .normal
    
    @State var moveType: PokemonType = .fire
    
    @State var result: String = ""
    
    var body: some View {
        
        VStack {
            
            RoundedRectangle(cornerRadius: 12)
                .fill(LinearGradient(colors: [.accentColor.opacity(0.2), .accentColor.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(maxWidth: .infinity, maxHeight: 50)
                .overlay {
                    Text(result)
                        .font(.system(.headline, design: .rounded))
                        .foregroundColor(.primary.opacity(0.75))
                        .onAppear {
                            result = self.checkWithDualType().localized
                        }
                }
                .padding()
            
            TypeHGridView(selectedType: $firstType) { pokemonType in
                // Do something
                result = self.checkWithDualType().localized
            }
            
            Spacer().frame(height: 20)
            TypeHGridView(selectedType: $secondType) { pokemonType in
                // Do something
                result = self.checkWithDualType().localized

            }
            Spacer().frame(height: 100)
            TypeHGridView(selectedType: $moveType) { pokemonType in
                // Do something
                result = self.checkWithDualType().localized
            }
        }
        
    }
    
    private func checkWithDualType() -> Effectiveness {

        let dualType = DualType(firstType: firstType, secondType: secondType)
        return dualType.fetchTypeEffectivenessAccordingTo(moveType)
        
    }
    
}

struct TypeEffectivenessView_Previews: PreviewProvider {
    static var previews: some View {
        TypeEffectivenessView()
    }
}
