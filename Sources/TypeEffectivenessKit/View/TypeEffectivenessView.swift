//
//  TypeEffectivenessView.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import SwiftUI

struct TypeEffectivenessView: View {
    
    @StateObject var typeEffectivenessViewModel: TypeEffectivenessViewModel = TypeEffectivenessViewModel(firstType: .water, secondType: .ground, moveType: .grass)
        
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TypeView(pokemonType: $typeEffectivenessViewModel.moveType)
                        .frame(maxWidth: 120, maxHeight: Common.spacingBetweenMainElements)
                    Image(systemName: Common.comparingMoveToTypesSymbol)
                    DualTypeView(pokemonType: $typeEffectivenessViewModel.firstType, secondType: $typeEffectivenessViewModel.secondType)
                        .frame(maxHeight: Common.spacingBetweenMainElements)
                }
                .padding()
                EffectivenessResultView(result: $typeEffectivenessViewModel.result)
                TypeHGridView(selectedType: $typeEffectivenessViewModel.firstType, typeViewModel: typeEffectivenessViewModel.firstTypeViewModel)
                Spacer().frame(height: Common.spacingBetweenMainElements)
                TypeHGridView(selectedType: $typeEffectivenessViewModel.secondType, typeViewModel: typeEffectivenessViewModel.secondTypeViewModel)
                Spacer().frame(height: Common.spacingBetweenMainElements)
                TypeHGridView(selectedType: $typeEffectivenessViewModel.moveType, typeViewModel: typeEffectivenessViewModel.moveTypeViewModel)
            }
            .navigationTitle(Common.navigationViewTitle)
        }
        .onAppear {
            self.typeEffectivenessViewModel.makeOnSelect()
        }
        
    }
    

    
}

struct TypeEffectivenessView_Previews: PreviewProvider {
    static var previews: some View {
        TypeEffectivenessView()
            .preferredColorScheme(.dark)
    }
}
