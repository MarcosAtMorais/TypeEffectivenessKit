//
//  StylizeHeadline.swift
//  
//
//  Created by Marcos Morais on 01/08/22.
//

import SwiftUI

struct StylizeHeadline: ViewModifier {
    
    @State var color: Color
    
    func body(content: Content) -> some View {
        content
            .font(.system(.headline, design: .rounded))
            .minimumScaleFactor(0.25)
            .foregroundColor(color)
    }
    
}
