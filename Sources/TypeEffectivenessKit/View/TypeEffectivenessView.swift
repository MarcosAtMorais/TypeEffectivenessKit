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
        NavigationView {
            VStack {
                RoundedRectangle(cornerRadius: 12)
                    .fill(LinearGradient(colors: [.gray.opacity(0.2), .gray.opacity(0.5), .gray], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .overlay {
                        Text(result)
                            .font(.system(.headline, design: .rounded))
                            .foregroundColor(.primary)
                            .onAppear {
                                result = self.checkWithDualType().localized
                            }
                    }
                    .padding()
                
                TypeHGridView(title: "First Type", selectedType: $firstType) { pokemonType in
                    // Do something
                    result = self.checkWithDualType().localized
                }
                
                Spacer().frame(height: 20)
                TypeHGridView(title: "Second Type", selectedType: $secondType) { pokemonType in
                    // Do something
                    result = self.checkWithDualType().localized

                }
                Spacer().frame(height: 40)
                TypeHGridView(title: "Move Type", selectedType: $moveType) { pokemonType in
                    // Do something
                    result = self.checkWithDualType().localized
                }
            }

            .navigationTitle("Type Effectiveness")
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
            .preferredColorScheme(.dark)
    }
}
