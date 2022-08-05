//
//  File.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

class TypeViewModel: ObservableObject {
    
    // MARK: - Properties
    
    /// The title that is going to be used on our container LazyHGrid.
    @Published var title: String
    
    // The callback used when the selection occurs inside the LazuHGrid.
    @Published var onSelect: (PokemonType) -> ()
    
    /**
     Standard initializer for our TypeViewModel.
     - parameters:
        - title: The Title of the LazyHGrid.
        - onSelect: The callback to when the selection occurs.
     */
    
    // MARK: - Initializers

    public init(title: String = "Types", onSelect: @escaping (PokemonType) -> () = { _ in }) {
        self.title = title
        self.onSelect = onSelect
    }
    
}
