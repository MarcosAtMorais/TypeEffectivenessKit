//
//  TypeEffectivenessExampleView.swift
//  
//
//  Created by Marcos Morais on 28/07/22.
//

import SwiftUI

struct TypeEffectivenessExampleView: View {
    
    @State var result: String = ""
    
    var body: some View {
        Text(result)
            .onAppear {
                result = self.exampleCheck().localized
            }
    }
    
    private func exampleCheck() -> Effectiveness {
        
        let damageType = PokemonType.ghost
        let pokemonType = DualType.fetchPokemonType(firstType: .normal, secondType: .ghost)
        
        return pokemonType.checkDamage(type: damageType)
        
    }
}

struct TypeEffectivenessExampleView_Previews: PreviewProvider {
    static var previews: some View {
        TypeEffectivenessExampleView()
    }
}
