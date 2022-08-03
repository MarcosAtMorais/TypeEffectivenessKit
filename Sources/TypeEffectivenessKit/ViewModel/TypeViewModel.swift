//
//  File.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation

class TypeViewModel: ObservableObject {
    
    @Published var title: String
    @Published var onSelect: (PokemonType) -> ()
    
    public init(title: String = "Types", onSelect: @escaping (PokemonType) -> () = { _ in }) {
        self.title = title
        self.onSelect = onSelect
    }
    
}
