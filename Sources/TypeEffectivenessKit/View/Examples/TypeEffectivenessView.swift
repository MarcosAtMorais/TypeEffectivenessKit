//
//  TypeEffectivenessView.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import SwiftUI

/**
 An example of how the framework works under the hood. It includes some examples of best practices when working with SwiftUI at an architecture level, as well as the usage of components and leverage with Swifts foundational practices. I hope this helps you out.
 */
public struct TypeEffectivenessView: View {
    
    // MARK: - Properties
    /// The ViewModel that dictates several logic for our little app.
    @StateObject var typeEffectivenessViewModel: TypeEffectivenessViewModel = TypeEffectivenessViewModel(firstType: .water, secondType: .fire, moveType: .ground)
        
    
    // MARK: - Initializer
    public init(typeEffectivenessViewModel: TypeEffectivenessViewModel = TypeEffectivenessViewModel(firstType: .water, secondType: .fire, moveType: .ground)) {
        self._typeEffectivenessViewModel = StateObject(wrappedValue: typeEffectivenessViewModel)
    }
    
    // MARK: - View
    public var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TypeView(pokemonType: $typeEffectivenessViewModel.moveType)
                        .frame(maxWidth: 120, maxHeight: Common.maxHeightForMainElements)
                    Image(systemName: Common.comparingMoveToTypesSymbol)
                    DualTypeView(firstType: $typeEffectivenessViewModel.firstType, secondType: $typeEffectivenessViewModel.secondType)
                        .frame(maxHeight: Common.maxHeightForMainElements)
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
        TypeEffectivenessView(typeEffectivenessViewModel: TypeEffectivenessViewModel(firstType: .fire, secondType: .ground, moveType: .water))
            .preferredColorScheme(.dark)
    }
}
