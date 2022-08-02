//
//  TypeEffectivenessExampleView.swift
//  
//
//  Created by Marcos Morais on 28/07/22.
//

import SwiftUI

struct TypeEffectivenessExampleView: View {
    
    @State var result: String = ""
    @State var secondResult: String = ""
    
    var body: some View {
        VStack {
            Text(result)
                .onAppear {
                    result = self.exampleCheck().localized
                }
            Text(secondResult)
                .onAppear {
                    secondResult = self.exampleCheckWithDualType().localized
                }
        }

    }
    
    private func exampleCheck() -> Effectiveness {
        
        let damageType = PokemonType.grass
        
        let pokemonFirstType = Fire()
        let pokemonSecondType = Poison()
        
        return pokemonFirstType.checkDualTypeEffectiveness(otherType: pokemonSecondType, offensiveType: damageType)
        
    }
    
    private func exampleCheckWithDualType() -> Effectiveness {
        
        let damageType = PokemonType.grass
        
        let pokemonFirstType = Ground()
        let pokemonSecondType = Water()
        
        let dualType = DualType(firstType: pokemonFirstType, secondType: pokemonSecondType)
        
        return dualType.fetchTypeEffectivenessAccordingTo(damageType)
        
    }
}

struct TypeEffectivenessExampleView_Previews: PreviewProvider {
    static var previews: some View {
        TypeEffectivenessExampleView()
    }
}
