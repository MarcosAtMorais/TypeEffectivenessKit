//
//  File.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

/**
 The ViewModel responsible for coordinating several aspects of the display of Types, Effectiveness and Results.
 */
class TypeEffectivenessViewModel: ObservableObject {
    
    /// This is the firstType, or Primary Type of the Pokemon
    @Published var firstType: PokemonType
    /// This is the secondType, or Secondary Type of the Pokemon. If it's the same as the firstType, the Pokemon becomes single-typed.
    @Published var secondType: PokemonType
    /// This is the moveType, or the PokemonType move that is going to be calculated into the Types of the Pokemon (firstType and secondType).
    @Published var moveType: PokemonType
    
    /// The result after checking the **firstType**, **secondType** with the *moveType*.
    @Published var result: Effectiveness = .notLocated
    
    /// The ViewModels for each container of PokemonTypes.
    @Published var firstTypeViewModel: TypeViewModel
    @Published var secondTypeViewModel: TypeViewModel
    @Published var moveTypeViewModel: TypeViewModel

    /**
     The main initializer for the TypeEffectivenessViewModel
     - parameters:
        - firstType: The PokemonType that consists of the Primary Type for the Pokemon.
        - secondType: The PokemonType that consists of the Secondary Type for the Pokemon.
        - moveType: The PokemonType that consists of the Move Type, which is going to be used against the Pokemon firstType and secondType.

     */
    public init(firstType: PokemonType, secondType: PokemonType, moveType: PokemonType) {
        self.firstType = firstType
        self.secondType = secondType
        self.moveType = moveType
        
        self.firstTypeViewModel = TypeViewModel(title: "First Type")
        self.secondTypeViewModel = TypeViewModel(title: "Second Type")
        self.moveTypeViewModel = TypeViewModel(title: "Move Type")
    }
    
    /**
     Makes the onSelect for each type ViewModel with callbacks.
     */
    public func makeOnSelect() {
        
        self.result = self.checkWithDualType()
        
        let callback: (PokemonType) -> () = { [weak self] pokemonType in
            guard let checkedResult = self?.checkWithDualType() else {
                self?.result = .notLocated
                return
            }
            self?.result = checkedResult
        }
        
        self.firstTypeViewModel.onSelect = callback
        self.secondTypeViewModel.onSelect = callback
        self.moveTypeViewModel.onSelect = callback
        
    }
    
    /**
     Checks the DualType effectiveness using the firstType and secondType, as well as the move PokemonType as the damageType.
     
     - returns: The effectiveness of the Move PokemonType against the DualType (firstType and secondType).
     */
    private func checkWithDualType() -> Effectiveness {
        let dualType = DualType(firstType: firstType, secondType: secondType)
        return dualType.fetchTypeEffectivenessAccordingTo(moveType)
    }
    
}
