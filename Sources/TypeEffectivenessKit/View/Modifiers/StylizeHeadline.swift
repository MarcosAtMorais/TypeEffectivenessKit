//
//  StylizeHeadline.swift
//  
//
//  Created by Marcos Morais on 01/08/22.
//

import SwiftUI

/**
 Simple styling with font (as .headline and rounded design), minimumScaleFactor for dynamicType when applicable and a foregroundColor for the text/symbol.
 */
struct StylizeHeadline: ViewModifier {
    
    /// Color of the given text/symbol.
    @State var color: Color
    
    func body(content: Content) -> some View {
        content
            .font(.system(.headline, design: .rounded))
            .minimumScaleFactor(0.25)
            .foregroundColor(color)
    }
    
}
