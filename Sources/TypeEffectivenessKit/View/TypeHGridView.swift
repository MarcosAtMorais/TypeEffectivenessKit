//
//  File.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import SwiftUI

struct TypeHGridView: View {
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        EmptyView()
    }
}

struct TypeHGridView_Previews: PreviewProvider {
    static var previews: some View {
        TypeHGridView()
    }
}
