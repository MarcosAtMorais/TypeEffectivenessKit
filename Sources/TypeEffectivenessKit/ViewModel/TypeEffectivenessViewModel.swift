//
//  File.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

class TypeEffectivenessViewModel: ObservableObject {
    
    @Published var firstType: PokemonType
    @Published var secondType: PokemonType
    @Published var moveType: PokemonType
    
    @Published var result: Effectiveness = .notLocated
    
    @Published var firstTypeViewModel: TypeViewModel
    @Published var secondTypeViewModel: TypeViewModel
    @Published var moveTypeViewModel: TypeViewModel

    public init(firstType: PokemonType, secondType: PokemonType, moveType: PokemonType) {
        self.firstType = firstType
        self.secondType = secondType
        self.moveType = moveType
        
        self.firstTypeViewModel = TypeViewModel(title: "First Type")
        self.secondTypeViewModel = TypeViewModel(title: "Second Type")
        self.moveTypeViewModel = TypeViewModel(title: "Move Type")
    }
    
    public func makeOnSelect() {
        self.result = self.checkWithDualType()
        
        self.firstTypeViewModel.onSelect = { [weak self] pokemonType in
            guard let checkedResult = self?.checkWithDualType() else {
                self?.result = .notLocated
                return
            }
            self?.result = checkedResult
        }
        
        self.secondTypeViewModel.onSelect = { [weak self] pokemonType in
            guard let checkedResult = self?.checkWithDualType() else {
                self?.result = .notLocated
                return
            }
            self?.result = checkedResult
        }
        
        self.moveTypeViewModel.onSelect = { [weak self] pokemonType in
            guard let checkedResult = self?.checkWithDualType() else {
                self?.result = .notLocated
                return
            }
            self?.result = checkedResult
        }
    }
    
    private func checkWithDualType() -> Effectiveness {
        let dualType = DualType(firstType: firstType, secondType: secondType)
        return dualType.fetchTypeEffectivenessAccordingTo(moveType)
    }
    
}
